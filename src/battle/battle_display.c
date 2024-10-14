#include "battle/battle_display.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/species.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/battle_io.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/trainer_data.h"

#include "battle/battle_context.h"
#include "battle/battle_io.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/healthbar.h"
#include "battle/ov16_0223B140.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_02264798.h"
#include "battle/ov16_0226871C.h"
#include "battle/party_gauge.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_0225BFFC_t.h"
#include "battle/struct_ov16_0225C168.h"
#include "battle/struct_ov16_0225C17C.h"
#include "battle/struct_ov16_0225C260.h"
#include "battle/struct_ov16_0225C29C.h"
#include "battle/struct_ov16_0225C2B0.h"
#include "battle/struct_ov16_0225C2C4.h"
#include "battle/struct_ov16_0225C2D8.h"
#include "battle/struct_ov16_0225C2EC.h"
#include "battle/struct_ov16_0225C35C.h"
#include "battle/struct_ov16_0225C370.h"
#include "battle/struct_ov16_0225C384.h"
#include "battle/struct_ov16_0225C398.h"
#include "battle/struct_ov16_0225C3BC.h"
#include "battle/struct_ov16_0225C3D0.h"
#include "battle/struct_ov16_0225C3E4.h"
#include "battle/struct_ov16_0225C3F8.h"
#include "battle/struct_ov16_0225C40C.h"
#include "battle/struct_ov16_0225C430.h"
#include "battle/struct_ov16_0225C454.h"
#include "battle/struct_ov16_0225C468.h"
#include "battle/struct_ov16_0225C65C.h"
#include "battle/struct_ov16_0225C9F0.h"
#include "battle/struct_ov16_0225CA4C.h"
#include "battle/struct_ov16_0225CA60.h"
#include "battle/struct_ov16_0225CBB8.h"
#include "battle/struct_ov16_0225D1C4.h"
#include "battle/struct_ov16_0225D360.h"
#include "battle/struct_ov16_0225D3CC.h"
#include "battle/struct_ov16_0225D5B8.h"
#include "battle/struct_ov16_0225D698.h"
#include "battle/struct_ov16_0225D708.h"
#include "battle/struct_ov16_0225D794.h"
#include "battle/struct_ov16_0225D840.h"
#include "battle/struct_ov16_0225D8AC.h"
#include "battle/struct_ov16_0225D9A8.h"
#include "battle/struct_ov16_0225DA44.h"
#include "battle/struct_ov16_0225DB74.h"
#include "battle/struct_ov16_0225DC7C.h"
#include "battle/struct_ov16_0225DCB0.h"
#include "battle/struct_ov16_0225DF34.h"
#include "battle/struct_ov16_0225DF6C.h"
#include "battle/struct_ov16_0225E0BC.h"
#include "battle/struct_ov16_0225E0F4.h"
#include "battle/struct_ov16_0225E2C8.h"
#include "battle/struct_ov16_0225E300.h"
#include "battle/struct_ov16_0225E4E8.h"
#include "battle/struct_ov16_0225EA80.h"
#include "battle/struct_ov16_0225F764.h"
#include "battle/struct_ov16_02260384.h"
#include "battle/struct_ov16_02260C00.h"
#include "battle/struct_ov16_02260F14.h"
#include "battle/struct_ov16_022623F0.h"
#include "battle/struct_ov16_02264408.h"
#include "battle/struct_ov16_02264650.h"
#include "battle/struct_ov16_02264650_1.h"
#include "battle/struct_ov16_02264EF8.h"
#include "battle/struct_ov16_02265050.h"
#include "battle/struct_ov16_02265124.h"
#include "battle/struct_ov16_02265154.h"
#include "battle/struct_ov16_022651A8.h"
#include "battle/struct_ov16_022656F0.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022664F8.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_02269668.h"
#include "battle/struct_ov16_0226AC98.h"
#include "battle/struct_ov16_0226C378.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "battle/trainer_ai.h"
#include "functypes/funcptr_02007C34.h"
#include "overlay012/const_ov12_0223B0A0.h"
#include "overlay012/const_ov12_0223B0B8.h"
#include "overlay012/const_ov12_0223B0DC.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02235E94.h"
#include "overlay012/ov12_02237EFC.h"
#include "overlay012/ov12_022380BC.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02236030.h"
#include "overlay012/struct_ov12_02237728.h"
#include "overlay012/struct_ov12_02237F38.h"
#include "overlay012/struct_ov12_022380DC.h"
#include "overlay013/ov13_0221FC20.h"
#include "overlay013/ov13_022264F4.h"
#include "overlay013/struct_ov13_0221FC20.h"
#include "overlay013/struct_ov13_022264F4.h"

#include "assert.h"
#include "core_sys.h"
#include "enums.h"
#include "flags.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_020131EC.h"
#include "unk_0201567C.h"
#include "unk_02015F84.h"
#include "unk_02018340.h"

static void ov16_0225E4E8(SysTask *param0, void *param1);
static void ov16_0225E894(SysTask *param0, void *param1);
static void ov16_0225EA80(SysTask *param0, void *param1);
static void ov16_0225F0C0(SysTask *param0, void *param1);
static void ov16_0225F764(SysTask *param0, void *param1);
static void ov16_0225FA00(SysTask *param0, void *param1);
static void ov16_0225FA70(SysTask *param0, void *param1);
static void ov16_0225FD5C(SysTask *param0, void *param1);
static void ov16_02260384(SysTask *param0, void *param1);
static void ov16_02260284(SysTask *param0, void *param1);
static void SlideHealthbarInTask(SysTask *task, void *data);
static void SlideHealthbarOutTask(SysTask *task, void *data);
static void ov16_022604C8(SysTask *param0, void *param1);
static void ov16_02260AB4(SysTask *param0, void *param1);
static void ov16_02260AE4(SysTask *param0, void *param1);
static void ov16_02260B04(SysTask *param0, void *param1);
static void ov16_02260B84(SysTask *param0, void *param1);
static void ov16_02260BAC(SysTask *param0, void *param1);
static void ov16_02260C00(SysTask *param0, void *param1);
static void ov16_02260DB0(SysTask *param0, void *param1);
static void ov16_02260E78(SysTask *param0, void *param1);
static void ov16_02260E98(SysTask *param0, void *param1);
static void ov16_02260F14(SysTask *param0, void *param1);
static void ov16_022610A8(SysTask *param0, void *param1);
static void ov16_022610EC(SysTask *param0, void *param1);
static void ov16_0226110C(SysTask *param0, void *param1);
static void ov16_022611DC(SysTask *param0, void *param1);
static void ov16_02261D50(SysTask *param0, void *param1);
static void ov16_02261DA8(SysTask *param0, void *param1);
static void ov16_02261DE0(SysTask *param0, void *param1);
static void ov16_02261E8C(SysTask *param0, void *param1);
static void ov16_02262258(SysTask *param0, void *param1);
static void ov16_0226230C(SysTask *param0, void *param1);
static void ov16_0226232C(SysTask *param0, void *param1);
static void ov16_022623F0(SysTask *param0, void *param1);
static void ov16_0226262C(SysTask *param0, void *param1);
static void ov16_0226264C(SysTask *param0, void *param1);
static void ov16_0226266C(SysTask *param0, void *param1);
static void ov16_022626C0(SysTask *param0, void *param1);
static void ov16_0226292C(SysTask *param0, void *param1);
static void ov16_02262988(SysTask *param0, void *param1);
static void ov16_022629DC(SysTask *param0, void *param1);
static void ov16_02262A9C(SysTask *param0, void *param1);
static void ov16_02262D28(SysTask *param0, void *param1);
static void ov16_02262DC4(SysTask *param0, void *param1);
static void ov16_02262F30(SysTask *param0, void *param1);
static void WaitForBattleMessagePrint(SysTask *param0, void *param1);
static void ov16_02262FC0(SysTask *param0, void *param1);
static void ov16_02263014(SysTask *param0, void *param1);
static void ov16_022633A4(SysTask *param0, void *param1);
static void ov16_022634DC(SysTask *param0, void *param1);
static void ShowPartyGaugeTask(SysTask *param0, void *param1);
static void HidePartyGaugeTask(SysTask *param0, void *param1);
static void ov16_02263688(SysTask *param0, void *param1);
static void ov16_022636D4(SysTask *param0, void *param1);
static Sprite *ov16_02263B30(BattleSystem *param0, UnkStruct_02007768 *param1, ArchivedSprite *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, SpriteAnimationFrame *param11, UnkFuncPtr_02007C34 *param12);
static void ov16_02263C1C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3F8 *param2, BattleMessage *param3);
static void ov16_02263CF0(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C40C *param2, BattleMessage *param3);
static void ov16_02263DD0(BattleSystem *param0, BattlerData *param1, BattleMessage *param2);
static void ov16_02263E7C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C430 *param2, BattleMessage *param3);
static void ov16_022641B4(BattleSystem *param0, BattlerData *param1, BattleMessage *param2);
static void ov16_02264270(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C9F0 *param2, BattleMessage *param3);
static void ov16_02264360(BattleSystem *param0, BattlerData *param1, BattleMessage *param2);
static CellActorData *ov16_022643B8(BattleSystem *param0, int param1, int param2, int param3, s16 param4, s16 param5);
static void ov16_02264408(BattleSystem *param0, BattlerData *param1, UnkStruct_ov12_0221FCDC *param2, UnkStruct_ov16_02265BBC *param3);
static void ov16_02264530(BattleSystem *param0, UnkStruct_ov16_02265BBC *param1, UnkStruct_ov12_022380DC *param2, int param3);
static void ov16_022645B8(u8 *param0, u8 *param1, int param2, int param3, u16 param4);
static BOOL ov16_02264650(UnkStruct_ov16_02264650_1 *param0, CellActorData *param1);
static void ov16_022646C8(SysTask *param0, void *param1);
static void ov16_02264730(BattleSystem *param0);
static void ov16_0226474C(BattleSystem *param0);
static u8 ov16_02264768(BattleSystem *param0, u8 param1, u8 param2);

static const u16 Unk_ov16_0226F1AE[] = {
    0x0,
    0x7297,
    0x3FFF,
    0x7AF0,
    0x7ADF,
    0x53D7,
    0x67F5,
    0x7B2C,
    0x2B7E,
    0x431F,
    0x7BDD,
    0x2A3F,
    0x293F,
    0x45CE,
    0x731F,
    0x7F51,
    0x151E
};

void ov16_0225CBB8(BattleSystem *param0, BattlerData *param1)
{
    UnkStruct_ov16_0225CBB8 *v0;

    v0 = (UnkStruct_ov16_0225CBB8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225CBB8));
    v0->unk_00 = param0;
    v0->unk_14 = 0;
    v0->unk_15 = 0;
    v0->unk_16 = 0;

    SysTask_Start(ov16_02263014, v0, 0);
}

void ov16_0225CBDC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C168 *param2)
{
    int v0;
    ArchivedSprite v1;
    UnkStruct_02007768 *v2;
    SpriteAnimationFrame v3[10];
    UnkStruct_ov16_0225E4E8 *v4;
    int v5;
    u8 v6;
    s8 v7;
    s8 v8;
    u8 v9;

    v2 = ov16_0223E000(param0);
    v5 = BattleSystem_BattleType(param0);
    v4 = (UnkStruct_ov16_0225E4E8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E4E8));

    v4->unk_12 = 0;

    if (param1->battlerType & 0x1) {
        v4->unk_13 = 2;
        v4->unk_0C = ov16_0223E020(param0, 1);
        SpriteActor_SetSpritePositionXY(v4->unk_0C->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], (8 * 11));
    } else {
        v4->unk_13 = 0;
        v4->unk_0C = ov16_0223E020(param0, 0);
        SpriteActor_SetSpritePositionXY(v4->unk_0C->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], (128 + 8));
    }

    if (param2->unk_01_2) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    BuildArchivedPokemonSprite(&v1, param2->unk_02, param2->unk_01_0, v4->unk_13, v0, param2->unk_01_3, param2->unk_04);

    v6 = LoadPokemonSpriteYOffset(param2->unk_02, param2->unk_01_0, v4->unk_13, param2->unk_01_3, param2->unk_04);

    PokeSprite_LoadYOffset(param1->unk_1A0, &v7, param2->unk_02);
    PokeSprite_LoadXOffsetShadow(param1->unk_1A0, &v8, param2->unk_02);
    PokeSprite_LoadShadowSize(param1->unk_1A0, &v9, param2->unk_02);
    PokeSprite_LoadAnimationFrames(param1->unk_1A0, &v3[0], param2->unk_02, param1->battlerType);

    v4->unk_08 = param1->unk_20 = ov16_02263B30(param0, v2, &v1, Unk_ov12_0223B0B8[param1->battlerType][0], Unk_ov12_0223B0B8[param1->battlerType][1], Unk_ov12_0223B0B8[param1->battlerType][2], v6, v7, v8, v9, param1->battler, &v3[0], NULL);

    if (v4->unk_13 == 2) {
        sub_020086FC(v4->unk_08, 8, 8, 0, 0x0);
    }

    if ((v4->unk_13 == 2) && (BattleSystem_BattleStatus(param0) & 0x40)) {
        int v10, v11;

        v11 = sub_020080C0(v4->unk_08, 1);
        v10 = ((24 * 8) - -80) / 2;

        sub_02007DEC(v4->unk_08, 46, 0);
        sub_02007DEC(v4->unk_08, 0, (256 - 64));
        sub_02007DEC(v4->unk_08, 1, v11 - v10);

        v4->unk_14 = v11;
    } else {
        v4->unk_14 = Unk_ov12_0223B0A0[param1->battlerType][0];
    }

    v4->unk_00 = param0;
    v4->unk_04 = param1;
    v4->unk_10 = param2->unk_00;
    v4->unk_11 = param1->battler;
    v4->unk_16 = param2->unk_02;
    v4->unk_2C = param2->unk_01_3;
    v4->unk_18 = param2->unk_08;
    v4->unk_1C = param1->battlerType;
    v4->unk_24 = Pokemon_GetNatureOf(param2->unk_04);
    v4->unk_28 = param2->unk_01_2;

    if ((v4->unk_13 == 2) && (BattleSystem_BattleStatus(param0) & 0x40)) {
        SysTask_Start(ov16_0225E894, v4, 0);
    } else {
        SysTask_Start(ov16_0225E4E8, v4, 0);
    }

    sub_02005454(1);
}

void ov16_0225CE1C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C17C *param2)
{
    int v0;
    UnkStruct_ov16_0225EA80 *v1;
    int v2;

    v2 = BattleSystem_BattleType(param0);
    v1 = (UnkStruct_ov16_0225EA80 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225EA80));

    if (param1->battlerType & 0x1) {
        v1->unk_84 = 2;
    } else {
        v1->unk_84 = 0;
    }

    if (param2->unk_01_2) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    BuildArchivedPokemonSprite(&v1->unk_14, param2->unk_02, param2->unk_01_0, v1->unk_84, v0, param2->unk_01_3, param2->unk_04);

    v1->unk_85 = LoadPokemonSpriteYOffset(param2->unk_02, param2->unk_01_0, v1->unk_84, param2->unk_01_3, param2->unk_04);

    PokeSprite_LoadYOffset(param1->unk_1A0, &v1->unk_90, param2->unk_02);
    PokeSprite_LoadXOffsetShadow(param1->unk_1A0, &v1->unk_91, param2->unk_02);
    PokeSprite_LoadShadowSize(param1->unk_1A0, &v1->unk_93, param2->unk_02);
    ov16_02263B10(param1);

    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_83 = 0;
    v1->unk_96 = 0;
    v1->unk_80 = param2->unk_00;
    v1->unk_81 = param1->battler;
    v1->unk_86 = param2->unk_02;
    v1->unk_97 = param2->unk_01_3;
    v1->unk_82 = param1->battlerType;
    v1->unk_88 = param2->unk_08;
    v1->unk_8C = param2->unk_0C;
    v1->unk_8D = Pokemon_GetNatureOf(param2->unk_04);
    v1->unk_8E = param2->unk_10;
    v1->unk_92 = param2->unk_01_2;
    v1->unk_94 = 0;

    sub_02005454(1);
    SysTask_Start(ov16_0225EA80, v1, 0);
}

void ov16_0225CF70(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C17C *param2)
{
    int v0;
    int v1;
    UnkStruct_ov16_0225EA80 *v2;
    int v3;

    v3 = BattleSystem_BattleType(param0);
    v2 = (UnkStruct_ov16_0225EA80 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225EA80));
    v2->unk_83 = 0;

    if (param1->battlerType & 0x1) {
        v2->unk_84 = 2;
    } else {
        v2->unk_84 = 0;
    }

    if (param2->unk_01_2) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    BuildArchivedPokemonSprite(&v2->unk_14, param2->unk_02, param2->unk_01_0, v2->unk_84, v1, param2->unk_01_3, param2->unk_04);

    v2->unk_85 = LoadPokemonSpriteYOffset(param2->unk_02, param2->unk_01_0, v2->unk_84, param2->unk_01_3, param2->unk_04);

    PokeSprite_LoadYOffset(param1->unk_1A0, &v2->unk_90, param2->unk_02);
    PokeSprite_LoadXOffsetShadow(param1->unk_1A0, &v2->unk_91, param2->unk_02);
    PokeSprite_LoadShadowSize(param1->unk_1A0, &v2->unk_93, param2->unk_02);
    ov16_02263B10(param1);

    v2->unk_00 = param0;
    v2->unk_04 = param1;
    v2->unk_80 = param2->unk_00;
    v2->unk_81 = param1->battler;
    v2->unk_86 = param2->unk_02;
    v2->unk_97 = param2->unk_01_3;
    v2->unk_82 = param1->battlerType;
    v2->unk_88 = param2->unk_08;
    v2->unk_8C = param2->unk_0C;
    v2->unk_8D = Pokemon_GetNatureOf(param2->unk_04);
    v2->unk_8E = param2->unk_10;
    v2->unk_92 = param2->unk_01_2;
    v2->unk_94 = param2->unk_14;
    v2->unk_96 = 0;
    v2->unk_98 = param2->unk_4C;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_28.unk_18[v0] = param2->unk_50[v0];
        v2->unk_28.unk_20[v0] = param2->unk_58[v0];
        v2->unk_28.unk_24[v0] = param2->unk_5C[v0];
        v2->unk_28.unk_28[v0] = param2->unk_60[v0];
        v2->unk_28.unk_2C[v0] = param2->unk_64[v0];
    }

    SysTask_Start(ov16_0225F0C0, v2, 0);
}

void ov16_0225D118(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02264EF8 *param2)
{
    int v0;
    UnkStruct_ov16_0225F764 *v1;

    v1 = (UnkStruct_ov16_0225F764 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225F764));
    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_08 = param1->unk_20;
    v1->unk_68 = param2->unk_00;
    v1->unk_69 = param1->battler;
    v1->unk_6A = param1->battlerType;
    v1->unk_6B = 0;
    v1->unk_6C = param2->unk_01;
    v1->unk_6E = param2->unk_02;
    v1->unk_70 = param2->unk_04;

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_10.unk_18[v0] = param2->unk_08[v0];
        v1->unk_10.unk_20[v0] = param2->unk_10[v0];
        v1->unk_10.unk_24[v0] = param2->unk_14[v0];
        v1->unk_10.unk_28[v0] = param2->unk_18[v0];
        v1->unk_10.unk_2C[v0] = param2->unk_1C[v0];
    }

    SysTask_Start(ov16_0225F764, v1, 0);
}

void ov16_0225D1C4(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265050 *param2)
{
    UnkStruct_ov16_0225D1C4 *v0;

    v0 = (UnkStruct_ov16_0225D1C4 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D1C4));

    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->battler;
    v0->unk_0A = param1->battlerType;
    v0->unk_0B = 0;
    v0->unk_0C = param2->unk_01;

    sub_020086FC(v0->unk_04, 0, 16, 0, Unk_ov16_0226F1AE[param2->unk_02]);
    sub_02007DEC(v0->unk_04, 45, 1);
    SysTask_Start(ov16_0225FA00, v0, 0);
}

void ov16_0225D228(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265124 *param2)
{
    int v0;
    UnkStruct_ov16_02264650_1 *v1;
    int v2;

    v1 = (UnkStruct_ov16_02264650_1 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02264650_1));
    v1->unk_0E = 0;

    if (param1->battlerType & 0x1) {
        v1->unk_0F = 2;
        v1->unk_04 = ov16_0223E020(param0, 1);
        SpriteActor_SetSpritePositionXY(v1->unk_04->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], (8 * 11));
    } else {
        v1->unk_0F = 0;
        v1->unk_04 = ov16_0223E020(param0, 0);
        SpriteActor_SetSpritePositionXY(v1->unk_04->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], (128 + 8));
    }

    if ((BattleSystem_BattleType(param0) & 0x8) || ((BattleSystem_BattleType(param0) & 0x10) && (param1->battlerType & 0x1))) {
        v2 = param1->battlerType;
    } else {
        v2 = param1->battlerType & 1;
    }

    param2->unk_02 = ov16_02264768(param0, param1->battler, param2->unk_02);

    v1->unk_08 = param1->unk_18 = ov16_022643B8(param0, v2, param2->unk_02, param1->battlerType, Unk_ov12_0223B0B8[v2][0], Unk_ov12_0223B0B8[v2][1]);
    v1->unk_10 = Unk_ov12_0223B0A0[v2][0];
    v1->unk_00 = param0;
    v1->unk_0C = param2->unk_00;
    v1->unk_0D = param1->battler;
    v1->unk_14 = param1->battlerType;
    v1->unk_1C = 0;

    if ((v1->unk_14 == 0) || (v1->unk_14 == 2)) {
        sub_02019184(BattleSystem_BGL(param0), 3, 2, 4 * 33);
    }

    SysTask_Start(ov16_0225FA70, v1, 0);
}

void ov16_0225D360(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265154 *param2)
{
    UnkStruct_ov16_0225D360 *v0;

    v0 = (UnkStruct_ov16_0225D360 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D360));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_10 = param2->unk_01;
    v0->unk_09 = param1->battler;
    v0->unk_04 = param1;

    if (param1->battlerType & 0x1) {
        v0->unk_0B = 2;
        v0->unk_0C = 0;
    } else {
        {
            TrainerData *v1;

            v1 = BattleSystem_TrainerData(param0, param1->battler);
            v0->unk_0B = 0;
            v0->unk_0C = sub_020788D0(ov16_02264768(param0, param1->battler, v1->class));
        }
    }

    SysTask_Start(ov16_0225FD5C, v0, 0);
}

void ov16_0225D3CC(BattleSystem *param0, BattlerData *param1)
{
    UnkStruct_ov16_0225D3CC *v0;

    v0 = (UnkStruct_ov16_0225D3CC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D3CC));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param1->data[0];
    v0->unk_09 = param1->battler;
    v0->unk_04 = param1;

    if (param1->battlerType & 0x1) {
        v0->unk_0B = 2;
    } else {
        v0->unk_0B = 0;
    }

    SysTask_Start(ov16_02260284, v0, 0);
}

void ov16_0225D414(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_022651A8 *param2)
{
    int v0;
    ArchivedSprite v1;
    UnkStruct_02007768 *v2;
    UnkStruct_ov16_02260384 *v3;
    u32 v4;

    v2 = ov16_0223E000(param0);
    v3 = (UnkStruct_ov16_02260384 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02260384));
    v3->unk_0A = 0;

    if (param1->battlerType & 0x1) {
        v3->unk_0B = 2;
    } else {
        v3->unk_0B = 0;
    }

    v3->unk_04 = param1->unk_18 = ov16_022643B8(param0, param1->battlerType & 1, param2->unk_02, param1->battlerType, Unk_ov12_0223B0DC[param1->battlerType & 1][0], Unk_ov12_0223B0DC[param1->battlerType & 1][1]);
    v3->unk_0C = Unk_ov12_0223B0A0[param1->battlerType & 1][param2->unk_04];
    v3->unk_00 = param0;
    v3->unk_08 = param2->unk_00;
    v3->unk_09 = param1->battler;

    SysTask_Start(ov16_02260384, v3, 0);
}

void BattleDisplay_SlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData, HealthbarData *healthbarData)
{
    Healthbar *healthbar = &battlerData->healthbar;
    MI_CpuClearFast(&healthbar->state, sizeof(u8));

    healthbar->battleSys = battleSys;
    healthbar->battler = battlerData->battler;
    healthbar->type = Healthbar_Type(battlerData->battlerType, BattleSystem_BattleType(battleSys));
    healthbar->unk_4C = healthbarData->command;
    healthbar->curHP = healthbarData->curHP;
    healthbar->maxHP = healthbarData->maxHP;
    healthbar->unk_48 = healthbarData->level;
    healthbar->unk_49 = healthbarData->gender;
    healthbar->damage = 0;
    healthbar->curExp = healthbarData->expFromLastLevel;
    healthbar->maxExp = healthbarData->expToNextLevel;
    healthbar->selectedPartySlot = healthbarData->selectedPartySlot;
    healthbar->status = healthbarData->status;
    healthbar->unk_4B = healthbarData->speciesCaught;
    healthbar->unk_4D = healthbarData->delay;
    healthbar->unk_27 = healthbarData->numSafariBalls;

    Healthbar_Enable(healthbar, FALSE);
    Healthbar_DrawInfo(healthbar, healthbar->curHP, HEALTHBAR_INFO_ALL);

    healthbar->unk_10 = SysTask_Start(SlideHealthbarInTask, healthbar, 1000);
}

void BattleDisplay_SlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    Healthbar *healthbar = &battlerData->healthbar;
    MI_CpuClearFast(&healthbar->state, sizeof(u8));

    healthbar->battleSys = battleSys;
    healthbar->battler = battlerData->battler;
    healthbar->unk_4C = battlerData->data[0];

    Healthbar_Scroll(healthbar, HEALTHBAR_SCROLL_OUT);

    healthbar->unk_10 = SysTask_Start(SlideHealthbarOutTask, healthbar, 1000);
}

void ov16_0225D5B8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C260 *param2)
{
    UnkStruct_ov16_0225D5B8 *v0;
    int v1, v2;

    v0 = (UnkStruct_ov16_0225D5B8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D5B8));
    MI_CpuClearFast(v0, sizeof(UnkStruct_ov16_0225D5B8));

    v0->unk_0A = 0;
    v0->unk_0B = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->battler;
    v0->unk_34 = param1->battlerType;
    v0->unk_04 = &param1->healthbar;
    v0->unk_23 = param2->unk_01;
    v0->unk_36 = param2->unk_24;
    v0->unk_38 = param2->unk_26;
    v0->unk_3A = param2->unk_28;
    v0->unk_3B = param2->unk_29;

    for (v1 = 0; v1 < 2; v1++) {
        for (v2 = 0; v2 < 6; v2++) {
            v0->unk_10[v1][v2] = param2->unk_08[v1][v2];
        }
    }

    for (v1 = 0; v1 < 6; v1++) {
        if (param2->unk_08[0][v1] == 2) {
            v0->unk_1C[v1] = 0;
        } else {
            v0->unk_1C[v1] = param2->unk_02[v1];
        }
    }

    {
        int v3;

        for (v3 = 0; v3 < 4; v3++) {
            v0->unk_24[v3] = param2->unk_14[v3];
            v0->unk_2C[v3] = param2->unk_1C[v3];
            v0->unk_30[v3] = param2->unk_20[v3];
        }
    }

    SysTask_Start(param1->unk_00.unk_00, v0, 0);
}

void ov16_0225D698(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_022656F0 *param2)
{
    UnkStruct_ov16_0225D698 *v0;
    int v1;

    v0 = (UnkStruct_ov16_0225D698 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D698));

    v0->unk_20 = 0;
    v0->unk_00 = param0;
    v0->unk_1C = param1->data[0];
    v0->unk_1D = param1->battler;
    v0->unk_1E = param1->battlerType;
    v0->unk_04 = &param1->healthbar;
    v0->unk_1F = param2->unk_01;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_0C[v1] = param2->unk_04[v1];
        v0->unk_14[v1] = param2->unk_0C[v1];
        v0->unk_18[v1] = param2->unk_10[v1];
    }

    v0->unk_22 = param2->unk_02;

    SysTask_Start(param1->unk_00.unk_04, v0, 0);
}

void ov16_0225D708(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C29C *param2)
{
    UnkStruct_ov16_0225D708 *v0;
    int v1, v2;
    u32 v3;
    u8 v4[6];

    v0 = (UnkStruct_ov16_0225D708 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D708));

    v0->unk_0F = 0;
    v0->unk_00 = param0;
    v0->unk_0C = param1->data[0];
    v0->unk_0D = param1->battler;
    v0->unk_0E = param1->battlerType;
    v0->unk_30 = param2->unk_02;
    v0->unk_04 = &param1->healthbar;
    v0->unk_32 = param2->unk_01;

    ov16_0223F87C(param0, &v4[0]);

    v2 = BattleSystem_MaxBattlers(param0);
    v3 = BattleSystem_BattleType(param0);

    for (v1 = 0; v1 < v2; v1++) {
        v0->unk_10[v1] = param2->unk_04[v1];
    }

    SysTask_Start(param1->unk_00.unk_08, v0, 0);
}

void ov16_0225D794(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2B0 *param2)
{
    UnkStruct_ov16_0225D794 *v0;
    int v1, v2;

    v0 = (UnkStruct_ov16_0225D794 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D794));

    v0->unk_08 = (UnkStruct_ov16_0225D840 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D840));
    v0->unk_08->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_0221FC20));
    v0->unk_08->unk_04->unk_00 = Party_New(5);
    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_0C = param2->unk_00;
    v0->unk_0D = param1->battler;
    v0->unk_0F = param1->battlerType;
    v0->unk_14 = param2->unk_01;
    v0->unk_15 = param2->unk_02;
    v0->unk_16 = param2->unk_03;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_08->unk_0C[v1] = param2->unk_04[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0->unk_18[v1][v2] = param2->unk_08[v1][v2];
        }

        v0->unk_30[v1] = param2->unk_20[v1];
    }

    SysTask_Start(param1->unk_00.unk_0C, v0, 0);
}

void ov16_0225D840(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2C4 *param2)
{
    UnkStruct_ov16_0225D840 *v0;
    int v1, v2;

    v0 = (UnkStruct_ov16_0225D840 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D840));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param2->unk_01;
    v0->unk_0B = param2->unk_02;
    v0->unk_10 = param2->unk_20;
    v0->unk_16 = param2->unk_03;
    v0->unk_14 = 0;
    v0->unk_18 = param2->unk_24;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_0C[v1] = param2->unk_04[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0->unk_1C[v1][v2] = param2->unk_08[v1][v2];
        }
    }

    SysTask_Start(param1->unk_00.unk_10, v0, 0);
}

void ov16_0225D8AC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2D8 *param2)
{
    UnkStruct_ov16_0225D8AC *v0;

    v0 = (UnkStruct_ov16_0225D8AC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8AC));

    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_0C = param2->unk_00;
    v0->unk_0D = param1->battler;
    v0->unk_04 = &param1->healthbar;
    v0->unk_10 = param2->unk_02;
    v0->unk_0F = param2->unk_01;
    v0->unk_18 = param2->unk_04;
    v0->unk_14 = param2->unk_08;

    SysTask_Start(param1->unk_00.unk_14, v0, 0);
}

typedef struct BattleMessageWaitTask {
    BattleSystem *battleSys;
    u8 command;
    u8 battler;
    u8 msgIdx;
} BattleMessageWaitTask;

void ov16_0225D8F0(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2EC *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    v1 = ov16_0223E060(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;

    v2.id = 0 + param2->unk_02 * 3;
    v2.tags = 2;
    v2.params[0] = param1->battler | (param2->unk_01 << 8);

    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void BattleDisplay_PrintMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    MessageLoader *msgLoader = BattleSystem_MessageLoader(battleSys);
    BattleMessageWaitTask *taskData = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    taskData->battleSys = battleSys;
    taskData->command = battlerData->data[0];
    taskData->battler = battlerData->battler;
    taskData->msgIdx = BattleMessage_Print(battleSys, msgLoader, battleMsg, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, taskData, 0);
}

void ov16_0225D9A8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265BBC *param2)
{
    UnkStruct_ov16_0225D9A8 *v0;

    v0 = (UnkStruct_ov16_0225D9A8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D9A8));

    v0->unk_6A = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_68 = param1->data[0];
    v0->unk_69 = param1->battler;
    v0->unk_0C = ov16_0223E008(param0);
    v0->unk_10 = *param2;
    v0->unk_08 = param1->unk_20;

    if ((param2->unk_4C == 1) && (param2->unk_50 == 25)) {
        param1->unk_19C = 1;
    }

    if ((param2->unk_4C == 1) && (param2->unk_50 == 26)) {
        param1->unk_19C = 0;
    }

    ov16_022645B8(&v0->unk_6B, &v0->unk_6C, param2->unk_4C, param2->unk_50, param2->unk_02);
    SysTask_Start(ov16_022626C0, v0, 0);
}

void ov16_0225DA44(BattleSystem *param0, BattlerData *param1)
{
    UnkStruct_ov16_0225DA44 *v0;

    v0 = (UnkStruct_ov16_0225DA44 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DA44));

    v0->unk_09 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param1->battler;
    v0->unk_0A = 0;

    SysTask_Start(ov16_0226292C, v0, 0);
}

void ov16_0225DA74(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C35C *param2)
{
    Healthbar *v0;

    GF_ASSERT(param1->healthbar.mainActor != NULL);

    v0 = &param1->healthbar;
    MI_CpuClear8(&v0->state, sizeof(u8));

    v0->battleSys = param0;
    v0->unk_4C = param2->unk_00;
    v0->battler = param1->battler;
    v0->type = Healthbar_Type(param1->battlerType, BattleSystem_BattleType(param0));
    v0->curHP = param2->unk_02;
    v0->maxHP = param2->unk_04;
    v0->damage = param2->unk_08;
    v0->unk_48 = param2->unk_01;

    if (param2->unk_08 == 0x7fff) {
        v0->curHP = 0;
        v0->damage = 0;
    }

    v0->unk_10 = SysTask_Start(ov16_02262988, v0, 1000);
}

void ov16_0225DB00(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C370 *param2)
{
    Healthbar *v0;

    GF_ASSERT(param1->healthbar.mainActor != NULL);

    v0 = &param1->healthbar;

    MI_CpuClear8(&v0->state, sizeof(u8));

    v0->battleSys = param0;
    v0->unk_4C = param2->unk_00;
    v0->battler = param1->battler;
    v0->curExp = param2->unk_04;
    v0->maxExp = param2->unk_0C;
    v0->expReward = param2->unk_08 - v0->curExp;

    if (param1->battlerType == 0) {
        v0->unk_10 = SysTask_Start(ov16_022629DC, v0, 1000);
        return;
    } else {
        ClearCommand(v0->battleSys, v0->battler, v0->unk_4C);
    }
}

void ov16_0225DB74(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C384 *param2)
{
    UnkStruct_ov16_0225DB74 *v0;
    int v1;

    v0 = (UnkStruct_ov16_0225DB74 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DB74));

    if (param1->battlerType & 0x1) {
        v0->unk_67 = 2;
    } else {
        v0->unk_67 = 0;
    }

    v0->unk_66 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_64 = param2->unk_00;
    v0->unk_65 = param1->battler;
    v0->unk_08 = param1->unk_20;
    v0->unk_68 = param2->unk_02;
    v0->unk_6A = param2->unk_01;
    v0->unk_6B = param2->unk_08;
    v0->unk_6C = param2->unk_04;
    v0->unk_70 = param2->unk_09;
    v0->unk_72 = param2->unk_0A;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_0C.unk_18[v1] = param2->unk_0C[v1];
        v0->unk_0C.unk_20[v1] = param2->unk_14[v1];
        v0->unk_0C.unk_24[v1] = param2->unk_18[v1];
        v0->unk_0C.unk_28[v1] = param2->unk_1C[v1];
        v0->unk_0C.unk_2C[v1] = param2->unk_20[v1];
    }

    SysTask_Start(ov16_02262A9C, v0, 0);
}

void ov16_0225DC4C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C398 *param2)
{
    int v0;

    if (param1->battlerType & 0x1) {
        v0 = 117;
    } else {
        v0 = -117;
    }

    ClearCommand(param0, param1->battler, param2->unk_00);
    sub_02005728(param2->unk_04, v0);
}

void ov16_0225DC7C(BattleSystem *param0, BattlerData *param1)
{
    UnkStruct_ov16_0225DC7C *v0;

    v0 = (UnkStruct_ov16_0225DC7C *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DC7C));

    v0->unk_06 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1->data[0];
    v0->unk_05 = param1->battler;

    SysTask_Start(ov16_02262D28, v0, 0);
}

void ov16_0225DCB0(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3BC *param2)
{
    UnkStruct_ov16_0225DCB0 *v0;
    int v1;

    v0 = (UnkStruct_ov16_0225DCB0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DCB0));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_60 = param2->unk_00;
    v0->unk_61 = param1->battler;
    v0->unk_62 = 0;
    v0->unk_63 = param2->unk_01;
    v0->unk_64 = param2->unk_02;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_08.unk_18[v1] = param2->unk_04[v1];
        v0->unk_08.unk_20[v1] = param2->unk_0C[v1];
        v0->unk_08.unk_24[v1] = param2->unk_10[v1];
        v0->unk_08.unk_28[v1] = param2->unk_14[v1];
        v0->unk_08.unk_2C[v1] = param2->unk_18[v1];
    }

    SysTask_Start(ov16_02262DC4, v0, 0);
}

void ov16_0225DD44(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3D0 *param2)
{
    GF_ASSERT(param1->healthbar.mainActor != NULL);

    param1->healthbar.status = param2->unk_01;

    Healthbar_DrawInfo(&param1->healthbar, param1->healthbar.curHP, HEALTHBAR_INFO_STATUS);
    ClearCommand(param0, param1->battler, param2->unk_00);
}

void ov16_0225DD7C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3E4 *param2)
{
    BattleMessageWaitTask *v0;
    int v1;

    v1 = Battler_TrainerID(param0, param1->battler);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = ov16_0223F9FC(param0, v1, param1->battler, param2->unk_01, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DDD8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3F8 *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263C1C(param0, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DE30(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C40C *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263CF0(param0, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DE88(BattleSystem *param0, BattlerData *param1)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263DD0(param0, param1, &v2);

    v1 = BattleSystem_MessageLoader(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = 34;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DEDC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C430 *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263E7C(param0, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DF34(BattleSystem *param0, BattlerData *param1)
{
    UnkStruct_ov16_0225DF34 *v0;

    v0 = (UnkStruct_ov16_0225DF34 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DF34));

    v0->unk_00 = param0;
    v0->unk_08 = param1->data[0];
    v0->unk_09 = param1->battler;
    v0->unk_0A = 0;
    v0->unk_04 = &param1->healthbar;

    SysTask_Start(ov16_02262F30, v0, 0);
}

void ov16_0225DF6C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C454 *param2)
{
    UnkStruct_ov16_0225DF6C *v0;
    MessageLoader *v1;

    if (param1->bootState == 0x0) {
        v1 = BattleSystem_MessageLoader(param0);
        v0 = (UnkStruct_ov16_0225DF6C *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DF6C));

        v0->unk_00 = param0;
        v0->unk_04 = param2->unk_00;
        v0->unk_05 = param1->battler;
        v0->unk_07 = 0;
        v0->unk_06 = BattleMessage_Print(param0, v1, &param2->unk_04, BattleSystem_TextSpeed(param0));

        SysTask_Start(ov16_02262FC0, v0, 0);
    } else if (param1->bootState == 0x1) {
        ov16_022661B0(param0, param1->battler);
        ClearCommand(param0, param1->battler, param2->unk_00);
    } else {
        if ((BattleSystem_BattleType(param0) & 0x4) == 0) {
            ov16_022661B0(param0, param1->battler);
        }

        ClearCommand(param0, param1->battler, param2->unk_00);
    }
}

void ov16_0225E008(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C468 *param2)
{
    Healthbar *v0;

    v0 = &param1->healthbar;

    MI_CpuClearFast(&v0->state, sizeof(u8));

    v0->battleSys = param0;
    v0->battler = param1->battler;
    v0->type = Healthbar_Type(param1->battlerType, BattleSystem_BattleType(param0));
    v0->unk_4C = param2->unk_00;
    v0->curHP = param2->unk_02;
    v0->maxHP = param2->unk_04;
    v0->unk_48 = param2->unk_01;
    v0->unk_49 = param2->unk_07_5;
    v0->damage = 0;
    v0->curExp = param2->unk_08;
    v0->maxExp = param2->unk_0C;
    v0->selectedPartySlot = param2->unk_06;
    v0->status = param2->unk_07_0;
    v0->unk_4B = param2->unk_07_7;
    v0->unk_27 = param2->unk_10;

    Healthbar_DrawInfo(v0, v0->curHP, ~HEALTHBAR_INFO_EXP_GAUGE);
    ClearCommand(v0->battleSys, v0->battler, v0->unk_4C);
}

void ov16_0225E0BC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C65C *param2)
{
    UnkStruct_ov16_0225E0BC *v0;

    v0 = (UnkStruct_ov16_0225E0BC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E0BC));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->battler;
    v0->unk_0C = param2->unk_02;
    v0->unk_0E = param2->unk_01;

    SysTask_Start(ov16_022633A4, v0, 0);
}

void ov16_0225E0F4(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_022664F8 *param2)
{
    UnkStruct_ov16_0225E0F4 *v0;

    v0 = (UnkStruct_ov16_0225E0F4 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E0F4));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->battler;
    v0->unk_0B = param2->unk_01;
    v0->unk_0C = 0;
    v0->unk_0D = param2->unk_02;

    SysTask_Start(ov16_022634DC, v0, 0);
}

typedef struct PartyGaugeTask {
    BattleSystem *battleSys;
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 state;
    u8 status[MAX_PARTY_SIZE];
    u8 midBattle;
} PartyGaugeTask;

void BattleDisplay_ShowBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;

    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        task->status[i] = partyGauge->status[i];
    }

    task->midBattle = FALSE;
    SysTask_Start(ShowPartyGaugeTask, task, 0);
}

void BattleDisplay_HideBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;
    task->midBattle = FALSE;

    SysTask_Start(HidePartyGaugeTask, task, 0);
}

void BattleDisplay_ShowPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;

    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        task->status[i] = partyGauge->status[i];
    }

    task->midBattle = TRUE;
    SysTask_Start(ShowPartyGaugeTask, task, 0);
}

void BattleDisplay_HidePartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;
    task->midBattle = TRUE;

    SysTask_Start(HidePartyGaugeTask, task, 0);
}

void ov16_0225E23C(BattleSystem *param0, BattlerData *param1)
{
    MessageLoader *v0;
    BattleMessage v1;

    if (param1->bootState == 0x0) {
        v0 = BattleSystem_MessageLoader(param0);

        v1.id = 923;
        v1.tags = 0;

        BattleMessage_Print(param0, v0, &v1, NULL);
        Battle_SetWaitDial(param0, sub_0200E7FC(BattleSystem_Window(param0, 0), 1));
    }

    ClearCommand(param0, param1->battler, 55);
}

void ov16_0225E294(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265BBC *param2)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(param0, param2, &v0, param1->battler);
    ov12_022382BC(&v0, 5);
    ClearCommand(param0, param1->battler, param2->unk_00);
}

void ov16_0225E2C8(BattleSystem *param0, BattlerData *param1)
{
    UnkStruct_ov16_0225E2C8 *v0;

    v0 = (UnkStruct_ov16_0225E2C8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E2C8));

    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_0C = param1->data[0];
    v0->unk_0D = param1->battler;
    v0->unk_08 = param1->unk_20;

    SysTask_Start(ov16_02263688, v0, 0);
}

void ov16_0225E300(BattleSystem *param0, BattlerData *param1)
{
    UnkStruct_ov16_0225E300 *v0;

    v0 = (UnkStruct_ov16_0225E300 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E300));

    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_0C = param1->data[0];
    v0->unk_0D = param1->battler;
    v0->unk_08 = param1->unk_20;

    SysTask_Start(ov16_022636D4, v0, 0);
}

void ov16_0225E338(BattleSystem *param0, BattlerData *param1)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_022641B4(param0, param1, &v2);

    v1 = BattleSystem_MessageLoader(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = 59;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225E38C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C9F0 *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02264270(param0, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = 60;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225E3E0(BattleSystem *param0, BattlerData *param1)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02264360(param0, param1, &v2);

    v1 = BattleSystem_MessageLoader(param0);
    v0 = (BattleMessageWaitTask *)Heap_AllocFromHeap(5, sizeof(BattleMessageWaitTask));

    v0->battleSys = param0;
    v0->command = 61;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(param0, v1, &v2, BattleSystem_TextSpeed(param0));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225E434(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265BBC *param2)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(param0, param2, &v0, param1->battler);
    ov12_02238390(&v0, 5);
    ClearCommand(param0, param1->battler, param2->unk_00);
}

void ov16_0225E468(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225CA4C *param2)
{
    int v0;

    if (param1->battlerType & 0x1) {
        v0 = 117;
    } else {
        v0 = -117;
    }

    switch (param2->unk_01) {
    case 0:
        sub_02005728(1790, v0);
        break;
    case 2:
        sub_02005728(1788, v0);
        break;
    case 1:
        sub_02005728(1789, v0);
        break;
    }

    ClearCommand(param0, param1->battler, param2->unk_00);
}

void ov16_0225E4C8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225CA60 *param2)
{
    Sound_PlayBGM(param2->unk_02);
    ClearCommand(param0, param1->battler, param2->unk_00);
}

static void ov16_0225E4E8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E4E8 *v0 = (UnkStruct_ov16_0225E4E8 *)param1;
    UnkStruct_ov12_0221FCDC *v1 = ov16_0223E008(v0->unk_00);
    s16 v2, v3;

    switch (v0->unk_12) {
    case 0:
        v0->unk_20 = 28;
        v0->unk_12++;
    case 1:
        if (--v0->unk_20) {
            break;
        }

        v0->unk_12++;
    case 2:
        if (v0->unk_13 == 2) {
            SpriteActor_GetSpritePositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
                if (v2 < (24 * 8)) {
                    sub_0200D5DC(v0->unk_0C->unk_00, 8, 0);
                } else {
                    SpriteActor_SetSpritePositionXY(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
                }
            }

            SpriteActor_GetSpritePositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if (v0->unk_1C == 1) {
                sub_02007DEC(v0->unk_08, 0, v2);
            } else if (v0->unk_1C == 3) {
                v2 = sub_020080C0(v0->unk_08, 0) - v2;
                v2 -= 24;

                sub_02008274(v0->unk_08, 0, -v2);
            } else if (v0->unk_1C == 5) {
                v2 = v2 - sub_020080C0(v0->unk_08, 0);
                v2 -= 16;

                sub_02008274(v0->unk_08, 0, v2);
            }

            if (sub_020080C0(v0->unk_08, 0) >= v0->unk_14) {
                sub_02007B98(v0->unk_08, 1);
                sub_02007DEC(v0->unk_08, 44, 0);
                sub_02007DEC(v0->unk_08, 45, 0);
                sub_02007DEC(v0->unk_08, 0, v0->unk_14);
                PokeSprite_LoadAnimation(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

                {
                    u8 v4;
                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v4, v0->unk_16, v0->unk_1C);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, 117, 127, NULL, 5, v4);
                }

                if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
                    SpriteActor_SetSpritePositionXY(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
                }

                sub_020086FC(v0->unk_08, 8, 0, 0, 0x0);
                v0->unk_12++;
            }
        } else {
            SpriteActor_GetSpritePositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if ((v0->unk_1C == 0) || (v0->unk_1C == 2)) {
                if (v2 > 64) {
                    sub_0200D5DC(v0->unk_0C->unk_00, -8, 0);
                } else {
                    SpriteActor_SetSpritePositionXY(v0->unk_0C->unk_00, 64, (128 + 8));
                }
            }

            SpriteActor_GetSpritePositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if (v0->unk_1C == 0) {
                sub_02007DEC(v0->unk_08, 0, v2);
            } else if (v0->unk_1C == 2) {
                v2 = v2 - sub_020080C0(v0->unk_08, 0);
                v2 -= 24;
                sub_02008274(v0->unk_08, 0, v2);
            } else if (v0->unk_1C == 4) {
                v2 = sub_020080C0(v0->unk_08, 0) - v2;
                v2 -= 16;
                sub_02008274(v0->unk_08, 0, -v2);
            }

            if (sub_020080C0(v0->unk_08, 0) <= v0->unk_14) {
                sub_02007DEC(v0->unk_08, 0, v0->unk_14);
                PokeSprite_LoadAnimation(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

                {
                    u8 v5;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v5, v0->unk_16, v0->unk_1C);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, -117, 127, NULL, 5, v5);
                }

                if ((v0->unk_1C == 0) || (v0->unk_1C == 2)) {
                    SpriteActor_SetSpritePositionXY(v0->unk_0C->unk_00, 64, (128 + 8));
                }

                v0->unk_12++;
            }
        }
        break;
    case 3:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_11) == 1) && (sub_02007C24(v0->unk_08) == 0)) {
            if (v0->unk_28) {
                {
                    UnkStruct_ov16_02265BBC v6;

                    ov16_02266B78(v0->unk_00, NULL, &v6, 1, 11, v0->unk_11, v0->unk_11, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v1, &v6);
                }
                v0->unk_12 = 4;
            } else {
                v0->unk_12 = 0xff;
            }
        }
        break;
    case 4:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_12 = 0xff;
        }
        break;
    default:
        sub_02005454(0);
        ClearCommand(v0->unk_00, v0->unk_11, v0->unk_10);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225E894(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E4E8 *v0 = (UnkStruct_ov16_0225E4E8 *)param1;
    UnkStruct_ov12_0221FCDC *v1 = ov16_0223E008(v0->unk_00);
    s16 v2, v3;

    switch (v0->unk_12) {
    case 0:
        v0->unk_20 = 28;
        v0->unk_12++;
    case 1:
        if (--v0->unk_20) {
            break;
        }

        v0->unk_12++;
    case 2:
        SpriteActor_GetSpritePositionXY(v0->unk_0C->unk_00, &v2, &v3);

        if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
            if (v2 < (24 * 8)) {
                sub_0200D5DC(v0->unk_0C->unk_00, 8, 0);
            } else {
                SpriteActor_SetSpritePositionXY(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
            }
        }

        SpriteActor_GetSpritePositionXY(v0->unk_0C->unk_00, &v2, &v3);
        sub_02008274(v0->unk_08, 1, 8 / 2);

        if (sub_020080C0(v0->unk_08, 1) >= v0->unk_14) {
            sub_02007B98(v0->unk_08, 1);
            sub_02007DEC(v0->unk_08, 44, 0);
            sub_02007DEC(v0->unk_08, 45, 0);
            sub_02007DEC(v0->unk_08, 1, v0->unk_14);
            PokeSprite_LoadAnimation(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

            {
                u8 v4;

                PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v4, v0->unk_16, v0->unk_1C);
                Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, 117, 127, NULL, 5, v4);
            }

            SpriteActor_SetSpritePositionXY(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
            sub_020086FC(v0->unk_08, 8, 0, 0, 0x0);

            v0->unk_12++;
        }
        break;
    case 3:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_11) == 1) && (sub_02007C24(v0->unk_08) == 0)) {
            if (v0->unk_28) {
                {
                    UnkStruct_ov16_02265BBC v5;

                    ov16_02266B78(v0->unk_00, NULL, &v5, 1, 11, v0->unk_11, v0->unk_11, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v1, &v5);
                }
                v0->unk_12 = 4;
            } else {
                v0->unk_12 = 0xff;
            }
        }
        break;
    case 4:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_12 = 0xff;
        }
        break;
    default:
        sub_02005454(0);
        ClearCommand(v0->unk_00, v0->unk_11, v0->unk_10);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

const u8 Unk_ov16_0226F174[] = {
    0x6,
    0x1,
    0x8,
    0x3,
    0x7,
    0x5
};

static void ov16_0225EA80(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225EA80 *v0 = (UnkStruct_ov16_0225EA80 *)param1;

    switch (v0->unk_83) {
    case 0:
        v0->unk_96 = 0;

        {
            v0->unk_10 = NULL;

            if (BattleSystem_BattleType(v0->unk_00) & 0x8) {
                if ((BattleSystem_BattleStatus(v0->unk_00) & 0x20) == 0) {
                    if (v0->unk_82 == 2) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, 5);
                    }
                }
            } else {
                if ((BattleSystem_BattleStatus(v0->unk_00) & 0x20) == 0) {
                    if ((ov16_0223ED60(v0->unk_00) == 1) && (v0->unk_82 == 2)) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, 5);
                    } else if (v0->unk_82 == 0) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, 5);
                    } else {
                        (void)0;
                    }
                }
            }
        }

        v0->unk_83++;
        break;
    case 1: {
        UnkStruct_ov12_02236030 v1 = { 0 };

        v1.unk_00 = v0->unk_82;
        v1.unk_08 = BattleSystem_PartyPokemon(v0->unk_00, v0->unk_81, v0->unk_8C);
        v0->unk_08 = ov12_02236004(5, &v1);

        ov12_02236320(v0->unk_08);
    }
        v0->unk_83++;
        break;
    case 2:
        if (ov12_02237890(v0->unk_04->unk_84) != 0) {
            break;
        }

        if (ov12_02236374(v0->unk_08) != 1) {
            break;
        }

        if (ov12_02237810(v0->unk_04->unk_84) == 1) {
            if (v0->unk_82 == 4) {
                v0->unk_96++;

                if (v0->unk_96 >= 12) {
                    v0->unk_96 = 0;
                } else {
                    break;
                }
            }

            {
                UnkStruct_02007768 *v2;
                SpriteAnimationFrame v3[10];

                v2 = ov16_0223E000(v0->unk_00);
                PokeSprite_LoadAnimationFrames(v0->unk_04->unk_1A0, &v3[0], v0->unk_86, v0->unk_82);
                v0->unk_04->unk_20 = ov16_02263B30(v0->unk_00, v2, &v0->unk_14, Unk_ov12_0223B0A0[v0->unk_82][0], Unk_ov12_0223B0B8[v0->unk_82][1], Unk_ov12_0223B0B8[v0->unk_82][2], v0->unk_85, v0->unk_90, v0->unk_91, v0->unk_93, v0->unk_81, &v3[0], NULL);

                sub_02007DEC(v0->unk_04->unk_20, 12, 0x0);
                sub_02007DEC(v0->unk_04->unk_20, 13, 0x0);
                sub_02007DEC(v0->unk_04->unk_20, 44, 0);
                sub_02007DEC(v0->unk_04->unk_20, 6, 1);
            }

            sub_020086FC(v0->unk_04->unk_20, 16, 16, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            sub_02007DEC(v0->unk_04->unk_20, 6, 0);

            ov12_022363B4(v0->unk_08);

            if (v0->unk_84 == 2) {
                sub_02005728(1798, 117);
            } else {
                sub_02005728(1798, -117);
            }

            if (v0->unk_10) {
                ov12_02223770(v0->unk_10);
                v0->unk_10 = NULL;
            }

            v0->unk_83++;
        }
        break;
    case 3:
        if (ov12_022377F8(v0->unk_04->unk_84) != 1) {
            v0->unk_83++;
        }
    case 4:
        if ((sub_020080C0(v0->unk_04->unk_20, 12) == 0x100) && (ov12_022363C4(v0->unk_08) == 0)) {
            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v4;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v4, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v4);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v5;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v5, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v5);
                }
            }

            PokeSprite_LoadAnimation(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 0, Unk_ov16_0226F1AE[v0->unk_8E]);

            v0->unk_83 = 5;
        } else if (sub_020080C0(v0->unk_04->unk_20, 12) >= 0x100) {
            sub_02007DEC(v0->unk_04->unk_20, 12, 0x100);
            sub_02007DEC(v0->unk_04->unk_20, 13, 0x100);

            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v6;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v6, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v6);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v7;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v7, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v7);
                }
            }

            PokeSprite_LoadAnimation(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 1, Unk_ov16_0226F1AE[v0->unk_8E]);

            v0->unk_83 = 5;
        } else {
            sub_02008274(v0->unk_04->unk_20, 12, 0x20);
            sub_02008274(v0->unk_04->unk_20, 13, 0x20);
            sub_020087C8(v0->unk_04->unk_20, v0->unk_90);
        }
        break;
    case 5:
        if (ov12_022363C4(v0->unk_08) == 0) {
            v0->unk_83 = 6;
        }
        break;
    case 6:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_81) == 1) && (sub_02007C24(v0->unk_04->unk_20) == 0)) {
            ov12_0223783C(v0->unk_04->unk_84);
            v0->unk_04->unk_84 = NULL;
            ov12_02236428(v0->unk_08);

            if (v0->unk_92) {
                {
                    UnkStruct_ov16_02265BBC v8;

                    v0->unk_24 = ov12_0221FCDC(5);
                    ov16_02266B78(v0->unk_00, NULL, &v8, 1, 11, v0->unk_81, v0->unk_81, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_24, &v8);
                }
                v0->unk_83 = 7;
            } else {
                v0->unk_83 = 0xff;
            }
        }
        break;
    case 7:
        ov12_0222016C(v0->unk_24);

        if (ov12_02220188(v0->unk_24) == 0) {
            ov12_02220198(v0->unk_24);
            ov12_0221FDF4(v0->unk_24);
            v0->unk_83 = 0xff;
        }
        break;
    default:
        sub_02005454(0);
        ClearCommand(v0->unk_00, v0->unk_81, v0->unk_80);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225F0C0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225EA80 *v0 = (UnkStruct_ov16_0225EA80 *)param1;
    UnkStruct_ov12_0221FCDC *v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_83) {
    case 0: {
        BallThrow v2;

        v2.type = Unk_ov16_0226F174[v0->unk_82];
        v2.heapID = 5;
        v2.target = v0->unk_81;
        v2.ballID = v0->unk_8E;
        v2.cellActorSys = ov16_0223E010(v0->unk_00);
        v2.paletteSys = BattleSystem_PaletteSys(v0->unk_00);
        v2.bgPrio = 1;
        v2.surface = 0;

        if (v0->unk_94 == 1) {
            v2.mode = 1;
        } else {
            v2.mode = 0;
        }

        v0->unk_0C = ov12_02237728(&v2);
    }
        {
            UnkStruct_02007768 *v3;
            SpriteAnimationFrame v4[10];

            v3 = ov16_0223E000(v0->unk_00);
            PokeSprite_LoadAnimationFrames(v0->unk_04->unk_1A0, &v4[0], v0->unk_86, v0->unk_82);
            v0->unk_04->unk_20 = ov16_02263B30(v0->unk_00, v3, &v0->unk_14, Unk_ov12_0223B0A0[v0->unk_82][0], Unk_ov12_0223B0B8[v0->unk_82][1], Unk_ov12_0223B0B8[v0->unk_82][2], v0->unk_85, v0->unk_90, v0->unk_91, v0->unk_93, v0->unk_81, &v4[0], NULL);

            sub_02007DEC(v0->unk_04->unk_20, 12, 0x0);
            sub_02007DEC(v0->unk_04->unk_20, 13, 0x0);
            sub_02007DEC(v0->unk_04->unk_20, 44, 0);
            sub_02007DEC(v0->unk_04->unk_20, 6, 1);
        }
        {
            v0->unk_10 = NULL;
            v0->unk_10 = ov12_02223764(v0->unk_00, 5);
        }
        v0->unk_83++;
        break;
    case 1: {
        UnkStruct_ov12_02236030 v5 = { 0 };

        v5.unk_00 = v0->unk_82;
        v5.unk_08 = BattleSystem_PartyPokemon(v0->unk_00, v0->unk_81, v0->unk_8C);
        v5.unk_04 = v0->unk_8E;

        v0->unk_08 = ov12_02236004(5, &v5);
        ov12_02236320(v0->unk_08);
    }
        v0->unk_83++;
        break;
    case 2:
        if ((ov12_02237890(v0->unk_0C) != 0) && (v0->unk_94 == 0)) {
            break;
        }

        if (ov12_02236374(v0->unk_08) != 1) {
            break;
        }

        if (ov12_02237810(v0->unk_0C) == 1) {
            if (v0->unk_10) {
                ov12_02223770(v0->unk_10);
            }

            sub_020086FC(v0->unk_04->unk_20, 16, 16, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            sub_02007DEC(v0->unk_04->unk_20, 6, 0);

            ov12_022363B4(v0->unk_08);

            if (v0->unk_84 == 2) {
                sub_02005728(1798, 117);
            } else {
                sub_02005728(1798, -117);
            }

            v0->unk_83++;
        }
        break;
    case 3:
        if (ov12_022377F8(v0->unk_0C) != 1) {
            v0->unk_83++;
        }
    case 4:
        if ((sub_020080C0(v0->unk_04->unk_20, 12) == 0x100) && (ov12_022363C4(v0->unk_08) == 0)) {
            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v6;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v6, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v6);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v7;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v7, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v7);
                }
            }

            PokeSprite_LoadAnimation(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            v0->unk_83 = 5;
        } else if (sub_020080C0(v0->unk_04->unk_20, 12) >= 0x100) {
            sub_02007DEC(v0->unk_04->unk_20, 12, 0x100);
            sub_02007DEC(v0->unk_04->unk_20, 13, 0x100);

            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v8;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v8, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v8);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v9;

                    PokeSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v9, v0->unk_86, v0->unk_82);
                    Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v9);
                }
            }

            PokeSprite_LoadAnimation(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 1, Unk_ov16_0226F1AE[v0->unk_8E]);
            v0->unk_83 = 5;
        } else {
            sub_02008274(v0->unk_04->unk_20, 12, 0x20);
            sub_02008274(v0->unk_04->unk_20, 13, 0x20);
            sub_020087C8(v0->unk_04->unk_20, v0->unk_90);
        }
        break;
    case 5:
        if (ov12_022363C4(v0->unk_08) == 0) {
            v0->unk_83 = 6;
        }
        break;
    case 6:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_81) == 1) && (sub_02007C24(v0->unk_04->unk_20) == 0)) {
            ov12_0223783C(v0->unk_0C);
            ov12_02236428(v0->unk_08);

            if (v0->unk_92) {
                {
                    UnkStruct_ov16_02265BBC v10;

                    ov16_02266B78(v0->unk_00, NULL, &v10, 1, 11, v0->unk_81, v0->unk_81, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v1, &v10);
                }
                v0->unk_83 = 7;
            } else {
                v0->unk_83 = 8;
            }
        }
        break;
    case 7:
    case 9:
    case 11:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_83++;
        }
        break;
    case 8:
        if (v0->unk_98) {
            {
                UnkStruct_ov16_02265BBC v11;

                ov16_02266B78(v0->unk_00, NULL, &v11, 1, 15, v0->unk_81, v0->unk_81, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v11);
            }
            v0->unk_83++;
        } else {
            v0->unk_83 = 0xff;
        }
        break;
    case 10: {
        UnkStruct_ov12_022380DC v12;
        UnkStruct_ov16_02265BBC v13;

        ov16_02264530(v0->unk_00, &v0->unk_28, &v12, v0->unk_81);
        ov12_02238390(&v12, 5);
        ov16_02266B78(v0->unk_00, NULL, &v13, 1, 16, v0->unk_81, v0->unk_81, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v13);

        v0->unk_04->unk_19C = 1;
    }
        v0->unk_83++;
        break;
    default:
        ClearCommand(v0->unk_00, v0->unk_81, v0->unk_80);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225F764(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225F764 *v0 = (UnkStruct_ov16_0225F764 *)param1;
    UnkStruct_ov12_0221FCDC *v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_6B) {
    case 0:
        if (v0->unk_70) {
            {
                UnkStruct_ov16_02265BBC v2;

                ov16_02266B78(v0->unk_00, NULL, &v2, 1, 15, v0->unk_69, v0->unk_69, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v2);
            }
            v0->unk_6B++;
        } else {
            v0->unk_6B = 4;
        }
        break;
    case 2: {
        UnkStruct_ov12_022380DC v3;
        UnkStruct_ov16_02265BBC v4;

        ov16_02264530(v0->unk_00, &v0->unk_10, &v3, v0->unk_69);
        ov12_022382BC(&v3, 5);
        ov16_02266B78(v0->unk_00, NULL, &v4, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_6B++;
        break;
    case 1:
    case 3:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_6B++;
        }
        break;
    case 4:
        if (v0->unk_6A & 0x1) {
            {
                BallThrow v5;

                v5.type = Unk_ov16_0226F174[v0->unk_6A];
                v5.heapID = 5;
                v5.mode = 5;
                v5.target = v0->unk_69;
                v5.ballID = v0->unk_6E;
                v5.cellActorSys = ov16_0223E010(v0->unk_00);
                v5.paletteSys = BattleSystem_PaletteSys(v0->unk_00);
                v5.bgPrio = 1;
                v5.surface = 0;
                v0->unk_0C = ov12_02237728(&v5);
            }
        } else {
            {
                BallThrow v6;
                int v7[] = { 0, 1, 2, 3, 4, 5 };

                v6.type = v7[v0->unk_6A];
                v6.heapID = 5;
                v6.mode = 5;
                v6.target = v0->unk_69;
                v6.ballID = v0->unk_6E;
                v6.cellActorSys = ov16_0223E010(v0->unk_00);
                v6.paletteSys = BattleSystem_PaletteSys(v0->unk_00);
                v6.bgPrio = 1;
                v6.surface = 0;
                v0->unk_0C = ov12_02237728(&v6);
            }
        }

        v0->unk_6B = 5;
        sub_020086FC(v0->unk_08, 0, 16, 0, Unk_ov16_0226F1AE[v0->unk_6E]);

        switch (v0->unk_6A) {
        case 0:
        case 2:
        case 4:
            sub_02005728(1798, -117);
            break;
        case 1:
        case 3:
        case 5:
            sub_02005728(1798, 117);
            break;
        }
        break;
    case 5:
        if (sub_020087B4(v0->unk_08) == 0) {
            v0->unk_6B++;
        }
        break;
    case 6:
        sub_02008274(v0->unk_08, 12, -0x20);
        sub_02008274(v0->unk_08, 13, -0x20);
        sub_020087C8(v0->unk_08, v0->unk_6C);

        if (sub_020080C0(v0->unk_08, 12) <= 0x0) {
            sub_02007DC8(v0->unk_08);

            if (v0->unk_6A & 0x1) {
                v0->unk_6B = 7;
            } else {
                v0->unk_6B = 7;
            }
        }

        break;
    case 7:
        if (ov12_022377F8(v0->unk_0C) == 0) {
            ov12_0223783C(v0->unk_0C);
            v0->unk_6B = 8;
        }
        break;
    case 8:
        ClearCommand(v0->unk_00, v0->unk_69, v0->unk_68);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225FA00(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D1C4 *v0 = (UnkStruct_ov16_0225D1C4 *)param1;

    switch (v0->unk_0B) {
    case 0:
        sub_02008274(v0->unk_04, 12, -0x20);
        sub_02008274(v0->unk_04, 13, -0x20);

        if (v0->unk_0C) {
            v0->unk_0C--;
            sub_02008274(v0->unk_04, 1, -1);
        }

        if (sub_020080C0(v0->unk_04, 12) <= 0x0) {
            sub_02007DC8(v0->unk_04);
            v0->unk_0B++;
        }
        break;
    case 1:
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225FA70(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02264650_1 *v0 = (UnkStruct_ov16_02264650_1 *)param1;
    s16 v1, v2, v3, v4;
    u32 v5;

    v5 = BattleSystem_BattleType(v0->unk_00);

    if ((v0->unk_1C < 33) && (v0->unk_0E >= 2) && ((v0->unk_14 == 0) || (v0->unk_14 == 2))) {
        sub_02019184(BattleSystem_BGL(v0->unk_00), 3, 1, 4);
        v0->unk_1C++;
    }

    switch (v0->unk_0E) {
    case 0:
        if (sub_0200D358(v0->unk_08) > 2) {
            sub_0200D3CC(v0->unk_08, 0);
            sub_0200D364(v0->unk_08, 2);
        }

        v0->unk_18 = 28;
        v0->unk_0E = 1;
    case 1:
        if (--v0->unk_18) {
            break;
        }

        v0->unk_0E = 2;
    case 2:
        SpriteActor_GetSpritePositionXY(v0->unk_04->unk_00, &v1, &v2);
        SpriteActor_GetSpritePositionXY(v0->unk_08, &v3, &v4);

        if (v0->unk_0F == 2) {
            if ((v0->unk_14 == 1) || (v0->unk_14 == 3)) {
                if (v1 < (24 * 8)) {
                    sub_0200D5DC(v0->unk_04->unk_00, 8, 0);
                } else {
                    SpriteActor_SetSpritePositionXY(v0->unk_04->unk_00, (24 * 8), (8 * 11));
                }
            }

            SpriteActor_GetSpritePositionXY(v0->unk_04->unk_00, &v1, &v2);

            if ((v0->unk_14 == 1) || ((v0->unk_14 == 3) && ((v5 == (0x2 | 0x1)) || (v5 == ((0x2 | 0x1) | 0x80)) || (v5 == ((0x4 | 0x1) | 0x2))))) {
                SpriteActor_SetSpritePositionXY(v0->unk_08, v1, v4);
            } else if (v0->unk_14 == 3) {
                v1 = v3 - v1;
                v1 -= 24;

                sub_0200D5DC(v0->unk_08, -v1, 0);
            } else if (v0->unk_14 == 5) {
                v1 = v1 - v3;
                v1 -= 16;

                sub_0200D5DC(v0->unk_08, v1, 0);
            }

            SpriteActor_GetSpritePositionXY(v0->unk_08, &v3, &v4);

            if (v3 >= v0->unk_10) {
                SpriteActor_SetSpritePositionXY(v0->unk_08, v0->unk_10, v4);

                if ((v0->unk_14 == 1) || (v0->unk_14 == 3)) {
                    SpriteActor_SetSpritePositionXY(v0->unk_04->unk_00, (24 * 8), (8 * 11));
                }

                if (sub_0200D358(v0->unk_08) > 1) {
                    sub_0200D3CC(v0->unk_08, 0);
                    sub_0200D364(v0->unk_08, 1);
                    v0->unk_12_0 = 0;
                    v0->unk_0E = 3;
                } else {
                    v0->unk_0E = 4;
                }
            }
        } else {
            if ((v0->unk_14 == 0) || (v0->unk_14 == 2)) {
                if (v1 > 64) {
                    sub_0200D5DC(v0->unk_04->unk_00, -8, 0);
                } else {
                    SpriteActor_SetSpritePositionXY(v0->unk_04->unk_00, 64, (128 + 8));
                }
            }

            SpriteActor_GetSpritePositionXY(v0->unk_04->unk_00, &v1, &v2);

            if ((v0->unk_14 == 0) || ((v0->unk_14 == 2) && ((v5 == (0x2 | 0x1)) || (v5 == ((0x2 | 0x1) | 0x80)) || (v5 == ((0x2 | 0x1) | 0x10)) || (v5 == ((0x4 | 0x1) | 0x2))))) {
                SpriteActor_SetSpritePositionXY(v0->unk_08, v1, v4);
            } else if (v0->unk_14 == 2) {
                v1 = v1 - v3;
                v1 -= 24;

                sub_0200D5DC(v0->unk_08, v1, 0);
            } else if (v0->unk_14 == 4) {
                v1 = v3 - v1;
                v1 -= 16;

                sub_0200D5DC(v0->unk_08, -v1, 0);
            }

            SpriteActor_GetSpritePositionXY(v0->unk_08, &v3, &v4);

            if (v3 <= v0->unk_10) {
                SpriteActor_SetSpritePositionXY(v0->unk_08, v0->unk_10, v4);

                if ((v0->unk_14 == 0) || (v0->unk_14 == 2)) {
                    SpriteActor_SetSpritePositionXY(v0->unk_04->unk_00, 64, (128 + 8));
                }

                v0->unk_0E = 4;
            }
        }
        break;
    case 3:
        if (sub_0200D3B8(v0->unk_08) == 1) {
            if (ov16_02264650(v0, v0->unk_08) == 0) {
                break;
            }
        }

        v0->unk_0E = 4;
    case 4:
        ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225FD5C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D360 *v0 = (UnkStruct_ov16_0225D360 *)param1;
    s16 v1, v2;
    int v3;
    u32 v4;
    s16 v5[][6][2] = {
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDF, 0xFFFFFFFFFFFFFFFA },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFEE },
            { 0x32, 0xFFFFFFFFFFFFFFDC },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDF, 0xFFFFFFFFFFFFFFFE },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFEE },
            { 0x32, 0xFFFFFFFFFFFFFFE4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE9, 0xFFFFFFFFFFFFFFFF },
            { 0x32, 0xFFFFFFFFFFFFFFFE },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
        },
    };

    v4 = BattleSystem_BattleType(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:
        if (v0->unk_10 == 0) {
            v0->unk_0A = 1;
        } else {
            {
                BallThrow v6;

                switch (v0->unk_10) {
                default:
                case 1:
                    v6.type = 15;
                    v0->unk_18 = 3;
                    v6.ballID = 5;
                    break;
                case 2:
                    v6.type = 12;
                    v0->unk_18 = 0;
                    v6.ballID = (0xFF + 18);
                    break;
                case 3:
                    v6.type = 13;
                    v0->unk_18 = 0;
                    v6.ballID = (0xFF + 19);
                    break;
                case 4:
                    v6.type = 15;
                    v0->unk_18 = 3;
                    v6.ballID = (0xFF + 17);
                    break;
                }

                v6.heapID = 5;
                v6.mode = 4;
                v6.target = v0->unk_09;
                v6.cellActorSys = ov16_0223E010(v0->unk_00);
                v6.paletteSys = BattleSystem_PaletteSys(v0->unk_00);
                v6.surface = 0;
                v6.battleSys = v0->unk_00;

                v0->unk_04->unk_84 = ov12_02237728(&v6);

                ov12_02237E34(v0->unk_04->unk_84, 100);
                ov12_02237E40(v0->unk_04->unk_84, 2);
                ov12_02237E30(v0->unk_04->unk_84, 0);

                sub_0200D3CC(v0->unk_04->unk_18, 0);
                sub_0200D364(v0->unk_04->unk_18, 1);
                sub_0200D390(v0->unk_04->unk_18, 1);

                v0->unk_0A = 3;
            }
        }
        break;
    case 1:
        if (v0->unk_0B == 2) {
            sub_0200D5DC(v0->unk_04->unk_18, 5, 0);
            SpriteActor_GetSpritePositionXY(v0->unk_04->unk_18, &v1, &v2);

            if ((v1 >= (256 - 48) - 48) && (ov12_02237890(v0->unk_04->unk_84) != 0)) {
                ov12_02237E0C(v0->unk_04->unk_84, 1);
                ov12_0223786C(v0->unk_04->unk_84, 0);

                if ((v4 & 0x2) && ((v4 & 0x8) == 0)) {
                    {
                        BattlerData *v7;

                        v7 = BattleSystem_BattlerData(v0->unk_00, BattleSystem_Partner(v0->unk_00, v0->unk_09));

                        ov12_02237E0C(v7->unk_84, 1);
                        ov12_0223786C(v7->unk_84, 0);
                        ov12_02237E4C(v7->unk_84, 12);
                    }
                }
            } else if (v1 >= (256 + 40)) {
                {
                    SpriteGfxHandler *v8;

                    v8 = ov16_0223E018(v0->unk_00);
                    sub_0200D0F4(v0->unk_04->unk_18);
                    v0->unk_04->unk_18 = NULL;

                    SpriteGfxHandler_UnloadCharObjById(v8, 20015 + v0->unk_04->battlerType);
                    SpriteGfxHandler_UnloadPlttObjById(v8, 20010 + v0->unk_04->battlerType);
                    SpriteGfxHandler_UnloadCellObjById(v8, 20007 + v0->unk_04->battlerType);
                    SpriteGfxHandler_UnloadAnimObjById(v8, 20007 + v0->unk_04->battlerType);
                }
                v0->unk_0A = 6;
            }
        } else {
            sub_0200D3CC(v0->unk_04->unk_18, 0);
            sub_0200D364(v0->unk_04->unk_18, 1);
            sub_0200D390(v0->unk_04->unk_18, 1);
            v0->unk_0A = 2;
        }
        break;
    case 2:
        sub_0200D5DC(v0->unk_04->unk_18, -5, 0);
        SpriteActor_GetSpritePositionXY(v0->unk_04->unk_18, &v1, &v2);

        if (v0->unk_04->unk_84) {
            v3 = sub_0200D3E0(v0->unk_04->unk_18);

            if (v5[v0->unk_0C][v3][0] != 0x7fff) {
                ov12_02237E0C(v0->unk_04->unk_84, 1);
                ov12_02237E18(v0->unk_04->unk_84, v1 + v5[v0->unk_0C][v3][0], v2 + v5[v0->unk_0C][v3][1]);

                if ((v3 == 3) && (ov12_02237890(v0->unk_04->unk_84) != 0)) {
                    ov12_0223786C(v0->unk_04->unk_84, 0);
                    ov12_02237E30(v0->unk_04->unk_84, 1);

                    if ((v4 & 0x2) && ((v4 & 0x8) == 0)) {
                        {
                            BattlerData *v9;

                            v9 = BattleSystem_BattlerData(v0->unk_00, BattleSystem_Partner(v0->unk_00, v0->unk_09));

                            ov12_02237E18(v9->unk_84, v1 + v5[v0->unk_0C][v3][0], v2 + v5[v0->unk_0C][v3][1]);
                            ov12_02237E0C(v9->unk_84, 1);
                            ov12_0223786C(v9->unk_84, 0);
                            ov12_02237E30(v9->unk_84, 1);
                        }
                    }
                }
            }
        }

        if (v1 <= -40) {
            {
                SpriteGfxHandler *v10;

                v10 = ov16_0223E018(v0->unk_00);

                sub_0200D0F4(v0->unk_04->unk_18);
                v0->unk_04->unk_18 = NULL;

                SpriteGfxHandler_UnloadCharObjById(v10, 20015 + v0->unk_04->battlerType);
                SpriteGfxHandler_UnloadPlttObjById(v10, 20010 + v0->unk_04->battlerType);
                SpriteGfxHandler_UnloadCellObjById(v10, 20007 + v0->unk_04->battlerType);
                SpriteGfxHandler_UnloadAnimObjById(v10, 20007 + v0->unk_04->battlerType);
            }
            v0->unk_0A = 6;
        }
        break;
    case 3:
        SpriteActor_GetSpritePositionXY(v0->unk_04->unk_18, &v1, &v2);
        v3 = sub_0200D3E0(v0->unk_04->unk_18);

        if (v3 == 4) {
            v0->unk_14 = 8;
            v0->unk_0A = 4;
        } else if (v0->unk_04->unk_84 != NULL) {
            if (v5[v0->unk_0C][v3][0] != 0x7fff) {
                ov12_02237E18(v0->unk_04->unk_84, v1 + v5[v0->unk_0C][v3][0], v2 + v5[v0->unk_0C][v3][1]);

                if ((v3 == 3) && (ov12_02237890(v0->unk_04->unk_84) != v0->unk_18)) {
                    ov12_0223786C(v0->unk_04->unk_84, v0->unk_18);
                    ov12_02237E40(v0->unk_04->unk_84, 1);
                    ov12_02237E30(v0->unk_04->unk_84, 1);

                    if (v0->unk_18 != 3) {
                        Sound_PlayEffect(1802);
                    }
                }
            }
        }
        break;
    case 4:
        if (--v0->unk_14 == 0) {
            if (v0->unk_18 == 3) {
                v0->unk_0A = 6;
            } else {
                v0->unk_0A = 5;
            }
        }
        break;
    case 5:
        if (ov12_022377F8(v0->unk_04->unk_84) == 1) {
            break;
        }

        ov12_0223783C(v0->unk_04->unk_84);

        v0->unk_04->unk_84 = NULL;
        v0->unk_0A = 6;
        break;
    case 6:
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02260284(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D3CC *v0 = (UnkStruct_ov16_0225D3CC *)param1;
    s16 v1;
    s16 v2;

    switch (v0->unk_0A) {
    case 0:
        if (v0->unk_0B == 2) {
            sub_0200D5DC(v0->unk_04->unk_18, 5, 0);
            SpriteActor_GetSpritePositionXY(v0->unk_04->unk_18, &v1, &v2);

            if (v1 >= (256 + 40)) {
                v0->unk_0A++;
            }
        } else {
            sub_0200D5DC(v0->unk_04->unk_18, -5, 0);
            SpriteActor_GetSpritePositionXY(v0->unk_04->unk_18, &v1, &v2);

            if (v1 <= -40) {
                v0->unk_0A++;
            }
        }
        break;
    case 1: {
        SpriteGfxHandler *v3;

        v3 = ov16_0223E018(v0->unk_00);
        sub_0200D0F4(v0->unk_04->unk_18);
        v0->unk_04->unk_18 = NULL;

        SpriteGfxHandler_UnloadCharObjById(v3, 20015 + v0->unk_04->battlerType);
        SpriteGfxHandler_UnloadPlttObjById(v3, 20010 + v0->unk_04->battlerType);
        SpriteGfxHandler_UnloadCellObjById(v3, 20007 + v0->unk_04->battlerType);
        SpriteGfxHandler_UnloadAnimObjById(v3, 20007 + v0->unk_04->battlerType);
    }
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02260384(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02260384 *v0 = (UnkStruct_ov16_02260384 *)param1;
    s16 v1, v2;

    switch (v0->unk_0A) {
    case 0:
        SpriteActor_GetSpritePositionXY(v0->unk_04, &v1, &v2);

        if (v0->unk_0B == 0) {
            v1 += 5;

            if (v1 >= v0->unk_0C) {
                v1 = v0->unk_0C;
                v0->unk_0A++;
            }
        } else {
            v1 -= 5;

            if (v1 <= v0->unk_0C) {
                v1 = v0->unk_0C;
                v0->unk_0A++;
            }
        }

        SpriteActor_SetSpritePositionXY(v0->unk_04, v1, v2);
        break;
    case 1:
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

enum {
    SLIDE_HEALTHBAR_IN_STATE_ENABLE = 0,
    SLIDE_HEALTHBAR_IN_STATE_WAIT,
    SLIDE_HEALTHBAR_IN_STATE_DONE,
};

/**
 * @brief Slide the healthbar in, then wait until it is done.
 *
 * @param task
 * @param data
 */
static void SlideHealthbarInTask(SysTask *task, void *data)
{
    Healthbar *healthbar = data;

    switch (healthbar->state) {
    case SLIDE_HEALTHBAR_IN_STATE_ENABLE:
        if (healthbar->unk_4D > 0) {
            healthbar->unk_4D--;
            break;
        }

        Healthbar_Scroll(healthbar, HEALTHBAR_SCROLL_IN);
        Healthbar_Enable(healthbar, TRUE);
        healthbar->state++;
        break;

    case SLIDE_HEALTHBAR_IN_STATE_WAIT:
        if (healthbar->doneScrolling == TRUE) {
            healthbar->state++;
        }
        break;

    default:
        ClearCommand(healthbar->battleSys, healthbar->battler, healthbar->unk_4C);
        healthbar->unk_10 = NULL;
        SysTask_Done(task);
        break;
    }
}

enum {
    SLIDE_HEALTHBAR_OUT_STATE_WAIT = 0,
    SLIDE_HEALTHBAR_OUT_STATE_DONE,
};

/**
 * @brief Wait until the healthbar has slid out.
 *
 * @param task
 * @param data
 */
static void SlideHealthbarOutTask(SysTask *task, void *data)
{
    Healthbar *healthbar = data;

    switch (healthbar->state) {
    case SLIDE_HEALTHBAR_OUT_STATE_WAIT:
        if (healthbar->doneScrolling == TRUE) {
            healthbar->state++;
        }
        break;

    default:
        ClearCommand(healthbar->battleSys, healthbar->battler, healthbar->unk_4C);
        healthbar->unk_10 = NULL;
        SysTask_Done(task);
        Healthbar_Enable(healthbar, FALSE);
        break;
    }
}

static void ov16_022604C8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0;
    BGL *v1;
    UnkStruct_ov16_02268A14 *v2;
    BattlerData *v3;
    u32 v4;
    int v5;
    Healthbar *v6;

    v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    v1 = BattleSystem_BGL(v0->unk_00);
    v2 = ov16_0223E02C(v0->unk_00);
    v3 = BattleSystem_BattlerData(v0->unk_00, v0->unk_09);
    v4 = BattleSystem_BattleType(v0->unk_00);
    v5 = BattleSystem_Partner(v0->unk_00, v0->unk_09);

    if (v5 != v0->unk_09) {
        v6 = ov16_0223F35C(v0->unk_00, v5);
    } else {
        v6 = NULL;
    }

    switch (v0->unk_0A) {
    case 0:

    {
        UnkStruct_ov16_0226AC98 v7;
        int v8;

        for (v8 = 0; v8 < 4; v8++) {
            v7.unk_00[v8] = v0->unk_24[v8];
            v7.unk_08[v8] = v0->unk_2C[v8];
            v7.unk_10[v8] = v0->unk_30[v8];
        }

        ov16_0226AC98(ov16_0223E02C(v0->unk_00), v0->unk_34, &v7);
    }
        v0->unk_0A++;

    case 1: {
        MessageLoader *v9;
        BattleMessage v10;

        v9 = BattleSystem_MessageLoader(v0->unk_00);

        if (v4 & 0x400) {
            switch (ov16_0223F228(v0->unk_00)) {
            case 0:
                v10.tags = 2;
                v10.params[0] = v0->unk_09 | (v0->unk_23 << 8);
                v10.id = 921;
                BattleMessage_Print(v0->unk_00, v9, &v10, 0);
                v0->unk_0A = 3;
                break;
            case 1:
                v10.tags = 0;
                v10.id = 1226 + ov16_0223E1B4(v0->unk_00, 0);
                v0->unk_35 = BattleMessage_Print(v0->unk_00, v9, &v10, BattleSystem_TextSpeed(v0->unk_00));
                v0->unk_0A = 2;
                break;
            }
        } else {
            if (v4 & 0x20) {
                v10.tags = 8;
                v10.params[0] = Battler_TrainerID(v0->unk_00, v0->unk_09);
                v10.id = 922;
            } else if (v4 & 0x200) {
                v10.tags = 8;
                v10.params[0] = Battler_TrainerID(v0->unk_00, v0->unk_09);
                v10.id = 1222;
            } else {
                v10.tags = 2;
                v10.params[0] = v0->unk_09 | (v0->unk_23 << 8);
                v10.id = 921;
            }

            BattleMessage_Print(v0->unk_00, v9, &v10, 0);
            v0->unk_0A = 3;
        }
    } break;
    case 2:
        if (Text_IsPrinterActive(v0->unk_35) == 0) {
            v0->unk_0A = 3;
        }
        break;
    case 3:
        ov16_0226757C(v0->unk_04);
        ov16_02264798(v3, v0->unk_00);
        v0->unk_0A = 4;
    case 4:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            UnkStruct_ov16_02269668 v11;
            NARC *v12;
            NARC *v13;

            v12 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
            v13 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

            v11.unk_01 = v0->unk_09;
            v11.unk_00 = v0->unk_34;
            v11.unk_02 = v0->unk_23;
            v11.unk_04 = v0->unk_36;
            v11.unk_06 = v0->unk_38;
            v11.unk_03 = v0->unk_3A;
            v11.unk_08 = ov16_0223EC58(v0->unk_00, v0->unk_09, v0->unk_3B);

            if (v3->unk_193) {
                ov16_0226BCCC(v2, 1);

                if (BattleSystem_BattleStatus(v0->unk_00) & 0x1) {
                    ov16_02268C04(v12, v13, v2, 6, 0, &v11);
                } else if (BattleSystem_BattleType(v0->unk_00) & 0x200) {
                    ov16_02268C04(v12, v13, v2, 10, 0, &v11);
                } else if (BattleSystem_BattleType(v0->unk_00) & 0x20) {
                    ov16_02268C04(v12, v13, v2, 8, 0, &v11);
                } else if ((v11.unk_00 == 4) && ((BattleSystem_BattleType(v0->unk_00) & 0x8) == 0)) {
                    ov16_02268C04(v12, v13, v2, 4, 0, &v11);
                } else {
                    ov16_02268C04(v12, v13, v2, 3, 0, &v11);
                }

                BattleSystem_SetCommandSelectionFlags(v0->unk_00, 1);
            } else {
                if (BattleSystem_BattleStatus(v0->unk_00) & 0x1) {
                    ov16_02268C04(v12, v13, v2, 5, 0, &v11);
                } else if (BattleSystem_BattleType(v0->unk_00) & 0x200) {
                    ov16_02268C04(v12, v13, v2, 9, 0, &v11);
                } else if (BattleSystem_BattleType(v0->unk_00) & 0x20) {
                    ov16_02268C04(v12, v13, v2, 7, 0, &v11);
                } else if (v11.unk_00 != 4) {
                    ov16_02268C04(v12, v13, v2, 1, 0, &v11);
                } else {
                    ov16_02268C04(v12, v13, v2, 2, 0, &v11);
                }

                v3->unk_193 = 1;
            }

            ov16_0226914C(v2, v0->unk_1C);
            ov16_02269168(v2, v0->unk_10[0], v0->unk_10[1]);
            ov16_022691BC(v2);
            NARC_dtor(v12);
            NARC_dtor(v13);
        }

        if (v6 != NULL) {
            ov16_02268468(v6);
        }

        v0->unk_0A = 5;
        break;
    case 5:
        if (gCoreSys.pressedKeys & PAD_BUTTON_START) {
            BattlerData *v14;
            int v15;

            for (v15 = 0; v15 < BattleSystem_MaxBattlers(v0->unk_00); v15++) {
                v14 = BattleSystem_BattlerData(v0->unk_00, v15);
                ov16_0226737C(&v14->healthbar);
            }
        }

        v0->unk_0C = ov16_0226925C(v2);

        if (v0->unk_0C != 0xffffffff) {
            v0->unk_0B = 10;
            Sound_PlayEffect(1501);
            v0->unk_0A = 6;
        }
        break;
    case 6:
        if ((ov16_02269348(v2) == 1) || (v0->unk_0C == 1)) {
            switch (v0->unk_0C) {
            case 1:
                if (BattleSystem_BattleType(v0->unk_00) & (0x20 | 0x200)) {
                    v0->unk_0A = 7;
                }
                break;
            case 2: {
                NARC *v16 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
                NARC *v17 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

                ov16_02268C04(v16, v17, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(v6);
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v3);
                NARC_dtor(v16);
                NARC_dtor(v17);
            } break;
            case 3: {
                NARC *v18 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
                NARC *v19 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

                ov16_02268C04(v18, v19, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(v6);
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v3);
                NARC_dtor(v18);
                NARC_dtor(v19);
            } break;
            case 4: {
                NARC *v20 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
                NARC *v21 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

                if (ov16_0226D088(v2) == 1) {
                    ov16_0226846C(v6);
                    v0->unk_0C = 0xff;
                }

                ov16_02268C04(v20, v21, v2, 0, 0, NULL);
                NARC_dtor(v20);
                NARC_dtor(v21);
            } break;
            default:
                GF_ASSERT(0);
                break;
            }

            ov16_02269218(v2);
            v0->unk_0A = 8;
        }
        break;
    case 7:
        if (ov16_02269348(v2) == 1) {
            NARC *v22 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
            NARC *v23 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

            ov16_02268C04(v22, v23, v2, 0, 0, NULL);
            ov16_0226BCCC(v2, 0);
            ov16_0226846C(v6);
            ov16_022675AC(v0->unk_04);
            ov16_022647D8(v3);
            ov16_02269218(v2);

            v0->unk_0A = 8;

            NARC_dtor(v22);
            NARC_dtor(v23);
        }
        break;
    case 8:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(v0->unk_00, v0->unk_09, v0->unk_0C);
            ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_02260AB4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    int v1;

    v1 = TrainerAI_PickCommand(v0->unk_00, v0->unk_09);

    ov16_022656D4(v0->unk_00, v0->unk_09, v1);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02260AE4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;

    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static const u8 Unk_ov16_0226F194[][2] = {
    { 0xA, 0x28 },
    { 0xA, 0x23 },
    { 0xA, 0x1E },
    { 0xA, 0x19 },
    { 0xA, 0x14 },
    { 0xA, 0xF },
    { 0xA, 0xA },
    { 0xF, 0xA },
    { 0x14, 0xA },
    { 0x19, 0xA },
    { 0x1E, 0xA },
    { 0x23, 0xA },
    { 0x28, 0xA }
};

static void ov16_02260B04(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    int v1;
    u16 v2;
    u8 v3;

    v3 = ov16_0223ED6C(v0->unk_00);
    v2 = BattleMon_Get(BattleSystem_Context(v0->unk_00), v0->unk_09, 0, NULL);
    v1 = PokemonPersonalData_GetSpeciesValue(v2, 26);
    v1 = v1 * Unk_ov16_0226F194[v3][0] / Unk_ov16_0226F194[v3][1];

    if ((BattleSystem_RandNext(v0->unk_00) % 255) <= v1) {
        ov16_022656D4(v0->unk_00, v0->unk_09, 4);
    } else {
        ov16_022656D4(v0->unk_00, v0->unk_09, 5);
    }

    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02260B84(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;

    ov16_022656D4(v0->unk_00, v0->unk_09, 4);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02260BAC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_09, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 4) || (v1 == 2)) {
        ov16_02264730(v0->unk_00);
    }

    ov16_022656D4(v0->unk_00, v0->unk_09, v1);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02260C00(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D698 *v0 = (UnkStruct_ov16_0225D698 *)param1;
    BGL *v1 = BattleSystem_BGL(v0->unk_00);
    UnkStruct_ov16_02268A14 *v2;
    int v3;
    Healthbar *v4;
    BattlerData *v5;

    v2 = ov16_0223E02C(v0->unk_00);
    v5 = BattleSystem_BattlerData(v0->unk_00, v0->unk_1D);
    v3 = BattleSystem_Partner(v0->unk_00, v0->unk_1D);

    if (v3 != v0->unk_1D) {
        v4 = ov16_0223F35C(v0->unk_00, v3);
    } else {
        v4 = NULL;
    }

    switch (v0->unk_20) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            MessageLoader *v6;
            BattleMessage v7;

            v6 = BattleSystem_MessageLoader(v0->unk_00);
            v7.tags = 2;
            v7.params[0] = v0->unk_1D | (v0->unk_1F << 8);
            v7.id = 921;

            BattleMessage_Print(v0->unk_00, v6, &v7, 0);
        }

        ov16_02269218(v2);

        {
            UnkStruct_ov16_02260C00 v8;
            int v9;
            NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
            NARC *v11 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

            for (v9 = 0; v9 < 4; v9++) {
                v8.unk_00[v9] = v0->unk_0C[v9];
                v8.unk_08[v9] = v0->unk_14[v9];
                v8.unk_0C[v9] = v0->unk_18[v9];
            }

            v8.unk_10 = v0->unk_1E;

            ov16_02268C04(v10, v11, v2, 11, 0, &v8);
            NARC_dtor(v10);
            NARC_dtor(v11);
        }
        v0->unk_20++;
        break;
    case 1:
        v0->unk_08 = ov16_0226925C(v2);

        if (v0->unk_08 != 0xffffffff) {
            Sound_PlayEffect(1501);
            v0->unk_20++;
        }
        break;
    case 2:
        if (1) {
            if (v0->unk_08 != 0xff) {
                if ((BattleSystem_BattleType(v0->unk_00) & 0x2) == 0) {
                    ov16_0226BCCC(v2, 0);
                    ov16_0226846C(v4);
                    ov16_022675AC(v0->unk_04);
                    ov16_022647D8(v5);
                }
            }

            ov16_02265790(v0->unk_00, v0->unk_1D, v0->unk_08);
            v0->unk_20++;
        }
        break;
    case 3:
        v0->unk_20++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_0223F234(v0->unk_00, 1);
            ClearCommand(v0->unk_00, v0->unk_1D, v0->unk_1C);
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_02260DB0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D698 *v0 = (UnkStruct_ov16_0225D698 *)param1;
    BattleContext *v1;
    int v2;
    u32 v3;

    v3 = BattleSystem_BattleType(v0->unk_00);
    v1 = BattleSystem_Context(v0->unk_00);

    if ((v3 & (0x1 | 0x100)) || (BattleSystem_BattleStatus(v0->unk_00) & 0x1) || (Battler_Side(v0->unk_00, v0->unk_1D) == 0)) {
        v2 = TrainerAI_Main(v0->unk_00, v0->unk_1D);

        switch (v2) {
        case 0xff:
            return;
            break;
        default:
            v2++;
            break;
        }
    } else {
        {
            int v4;
            int v5[4];
            int v6;

            v6 = 0;

            for (v4 = 0; v4 < 4; v4++) {
                if ((v0->unk_22 & FlagIndex(v4)) == 0) {
                    v5[v6] = v4 + 1;
                    v6++;
                }
            }

            v2 = v5[BattleSystem_RandNext(v0->unk_00) % v6];
        }

        BattleContext_Set(v0->unk_00, v1, 11, v0->unk_1D, BattleSystem_Defender(v0->unk_00, v1, v0->unk_1D, v0->unk_0C[v2 - 1], 1, NULL));
    }

    ov16_02265790(v0->unk_00, v0->unk_1D, v2);
    ClearCommand(v0->unk_00, v0->unk_1D, v0->unk_1C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02260E78(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D698 *v0 = (UnkStruct_ov16_0225D698 *)param1;

    ClearCommand(v0->unk_00, v0->unk_1D, v0->unk_1C);
    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02260E98(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D698 *v0 = (UnkStruct_ov16_0225D698 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_1D, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 4)) {
        ov16_02264730(v0->unk_00);
    } else {
        {
            u16 v2;

            v2 = BattleMon_Get(BattleSystem_Context(v0->unk_00), v0->unk_1D, 6 + (v1 - 1), NULL);

            if ((!v2) || (v2 > 467)) {
                ov16_02264730(v0->unk_00);
            }
        }
    }

    ov16_02265790(v0->unk_00, v0->unk_1D, v1);
    ClearCommand(v0->unk_00, v0->unk_1D, v0->unk_1C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02260F14(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D708 *v0 = (UnkStruct_ov16_0225D708 *)param1;
    BGL *v1 = BattleSystem_BGL(v0->unk_00);
    UnkStruct_ov16_02268A14 *v2;
    int v3;
    Healthbar *v4;
    BattlerData *v5;

    v5 = BattleSystem_BattlerData(v0->unk_00, v0->unk_0D);
    v2 = ov16_0223E02C(v0->unk_00);
    v3 = BattleSystem_Partner(v0->unk_00, v0->unk_0D);

    if (v3 != v0->unk_0D) {
        v4 = ov16_0223F35C(v0->unk_00, v3);
    } else {
        v4 = NULL;
    }

    switch (v0->unk_0F) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            UnkStruct_ov16_02260F14 v6;
            int v7;
            NARC *v8 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
            NARC *v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

            for (v7 = 0; v7 < 4; v7++) {
                v6.unk_00[v7] = v0->unk_10[v7];
            }

            v6.unk_20 = v0->unk_0E;
            v6.unk_21 = ov16_02269368(v0->unk_30, v0->unk_0E);

            ov16_02268C04(v8, v9, v2, 12, 0, &v6);
            NARC_dtor(v8);
            NARC_dtor(v9);
        }

        v0->unk_0F++;
        break;
    case 1:
        v0->unk_08 = ov16_0226925C(v2);

        if (v0->unk_08 != 0xffffffff) {
            Sound_PlayEffect(1501);
            v0->unk_0F++;
        }
        break;
    case 2:
        if (1) {
            if (v0->unk_08 != 0xff) {
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v5);
                ov16_0226846C(v4);

                if (v0->unk_32 == 1) {
                    ov16_0226BCCC(v2, 0);
                }
            }

            v0->unk_0F++;
        }
        break;
    case 3:
        v0->unk_0F++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            {
                u8 v10[6];
                u32 v11;
                int v12;

                v12 = v0->unk_08;
                v11 = BattleSystem_BattleType(v0->unk_00);

                if (v12 != 0xff) {
                    ov16_0223F858(v0->unk_00, &v10[0]);

                    if (v11 & 0x2) {
                        v12 = v10[2 + (v0->unk_08 - 1)] + 1;
                    } else {
                        v12 = v10[0 + (v0->unk_08 - 1)] + 1;
                    }
                }

                ov16_022658CC(v0->unk_00, v0->unk_0D, v12);
                ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);
                Heap_FreeToHeap(param1);
                SysTask_Done(param0);
            }
        }
        break;
    }
}

static void ov16_022610A8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D708 *v0 = (UnkStruct_ov16_0225D708 *)param1;
    BattleContext *v1;
    int v2;

    v1 = BattleSystem_Context(v0->unk_00);
    v2 = BattleContext_Get(v0->unk_00, v1, 11, v0->unk_0D) + 1;

    GF_ASSERT(v2 < 5);

    ov16_022658CC(v0->unk_00, v0->unk_0D, v2);
    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_022610EC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D708 *v0 = (UnkStruct_ov16_0225D708 *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_0226110C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D708 *v0 = (UnkStruct_ov16_0225D708 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 4)) {
        ov16_02264730(v0->unk_00);
    } else {
        {
            int v2 = v1 - 1;

            switch (v0->unk_30) {
            case 0x0:

                if (v0->unk_0D == v2) {
                    ov16_02264730(v0->unk_00);
                }
                break;
            case 0x200:

                if (Battler_Side(v0->unk_00, v0->unk_0D) != Battler_Side(v0->unk_00, v2)) {
                    ov16_02264730(v0->unk_00);
                }
                break;
            case 0x1:
            case 0x2:
            case 0x4:
            case 0x8:
            case 0x10:
            case 0x20:
            case 0x40:
            case 0x80:
            case 0x100:
            case 0x400:
                break;
            }
        }
    }

    ov16_022658CC(v0->unk_00, v0->unk_0D, v1);
    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_022611DC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D794 *v0 = (UnkStruct_ov16_0225D794 *)param1;
    PaletteData *v1;

    v1 = BattleSystem_PaletteSys(v0->unk_00);

    switch (v0->unk_0E) {
    case 0:
        v0->unk_10 = ov16_0226CD08(ov16_0223E02C(v0->unk_00));
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 0, 7, 0x0);
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 0, 16, 0x0);
        v0->unk_0E++;
        break;
    case 1:
        if (sub_0200384C(v1) == 0) {
            {
                ov16_0223B384(v0->unk_00);

                v0->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_022264F4));
                memset(v0->unk_04, 0, sizeof(UnkStruct_ov13_022264F4));

                v0->unk_04->unk_00 = v0->unk_00;
                v0->unk_04->unk_04 = BattleSystem_TrainerInfo(v0->unk_00, v0->unk_0D);
                v0->unk_04->unk_0C = 5;
                v0->unk_04->unk_26 = 0;
                v0->unk_04->unk_08 = BattleSystem_Bag(v0->unk_00);
                v0->unk_04->unk_10 = v0->unk_0D;
                v0->unk_04->unk_25 = v0->unk_10;
                v0->unk_04->unk_22 = v0->unk_14;
                v0->unk_04->unk_23 = v0->unk_15;
                v0->unk_04->unk_24 = v0->unk_16;
                v0->unk_04->unk_18 = v0->unk_30[v0->unk_0D];
                ov13_022264F4(v0->unk_04);
                v0->unk_0E = 3;
            }
        }
        break;
    case 2:
        v0->unk_04->unk_25 = v0->unk_10;
        ov13_022264F4(v0->unk_04);
        v0->unk_0E++;
    case 3:
        if (v0->unk_04->unk_26) {
            v0->unk_04->unk_26 = 0;
            v0->unk_10 = v0->unk_04->unk_25;

            if (v0->unk_04->unk_1C) {
                switch (v0->unk_04->unk_1E) {
                case 1:
                case 0:
                    v0->unk_0E = 4;
                    break;
                case 3:
                case 2:
                    v0->unk_0E = 6;
                    break;
                }
            } else {
                v0->unk_0E = 6;
            }
        }
        break;
    case 4: {
        int v2;
        int v3 = 0;
        int v4;
        Party *v5 = BattleSystem_Party(v0->unk_00, v0->unk_0D);
        Pokemon *v6;

        if ((BattleSystem_BattleType(v0->unk_00) & 0x2) && ((BattleSystem_BattleType(v0->unk_00) & 0x8) == 0)) {
            v4 = v0->unk_0D & 1;
        } else {
            v4 = v0->unk_0D;
        }

        Party_InitWithCapacity(v0->unk_08->unk_04->unk_00, 6);

        for (v2 = 0; v2 < Party_GetCurrentCount(v5); v2++) {
            v6 = BattleSystem_PartyPokemon(v0->unk_00, v4, v0->unk_18[v4][v2]);
            Party_AddPokemon(v0->unk_08->unk_04->unk_00, v6);
            v0->unk_08->unk_04->unk_2C[v2] = v0->unk_18[v4][v2];
        }

        v0->unk_08->unk_04->unk_08 = v0->unk_00;
        v0->unk_08->unk_04->unk_0C = 5;
        v0->unk_08->unk_04->unk_11 = 0;
        v0->unk_08->unk_04->unk_36 = 0;
        v0->unk_08->unk_04->unk_24 = 0;
        v0->unk_08->unk_04->unk_35 = 2;
        v0->unk_08->unk_04->unk_22 = v0->unk_04->unk_1C;
        v0->unk_08->unk_04->unk_33 = v0->unk_04->unk_1E;
        v0->unk_08->unk_04->unk_28 = v0->unk_04->unk_10;
        v0->unk_08->unk_04->unk_32 = v0->unk_10;
        v0->unk_08->unk_04->unk_14 = v0->unk_08->unk_0C[v0->unk_0D];
        v0->unk_08->unk_04->unk_15 = v0->unk_08->unk_0C[BattleSystem_Partner(v0->unk_00, v0->unk_0D)];

        if (v0->unk_0F == 4) {
            v0->unk_08->unk_04->unk_18[0] = v0->unk_30[BattleSystem_Partner(v0->unk_00, v0->unk_0D)];
            v0->unk_08->unk_04->unk_18[1] = v0->unk_30[v0->unk_0D];
        } else {
            v0->unk_08->unk_04->unk_18[0] = v0->unk_30[v0->unk_0D];
            v0->unk_08->unk_04->unk_18[1] = v0->unk_30[BattleSystem_Partner(v0->unk_00, v0->unk_0D)];
        }

        ov13_0221FC20(v0->unk_08->unk_04);
        v0->unk_0E++;
    } break;
    case 5:
        if (v0->unk_08->unk_04->unk_36) {
            v0->unk_10 = v0->unk_08->unk_04->unk_32;
            v0->unk_08->unk_04->unk_36 = 0;

            if (v0->unk_08->unk_04->unk_11 == 6) {
                v0->unk_0E = 2;
            } else {
                v0->unk_0E = 6;
            }
        }
        break;
    case 6:
        ov16_0223B430(v0->unk_00);
        ov16_0226CD10(ov16_0223E02C(v0->unk_00), v0->unk_10);
        sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 7, 0, 0x0);
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 16, 0, 0x0);
        v0->unk_0E++;
        break;
    case 7:
        if (sub_0200384C(v1) == 0) {
            sub_02015738(ov16_0223E220(v0->unk_00), 0);

            if (v0->unk_04->unk_1C) {
                v0->unk_0E = 9;

                switch (v0->unk_04->unk_1E) {
                case 1:
                    if ((v0->unk_04->unk_1C == 28) || (v0->unk_04->unk_1C == 29)) {
                        v0->unk_0E = 8;
                    } else if (((v0->unk_08->unk_04->unk_11 < 2) && ((BattleSystem_BattleType(v0->unk_00) == (0x2 | 0x1)) || (BattleSystem_BattleType(v0->unk_00) == ((0x2 | 0x1) | 0x10)))) || (v0->unk_08->unk_04->unk_11 < 1)) {
                        if (v0->unk_04->unk_1C == 23) {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 17;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 21;
                            }
                        } else {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 25;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 29;
                            }
                        }
                    } else {
                        v0->unk_0E = 8;
                    }
                    break;
                case 0:
                    if ((((v0->unk_08->unk_04->unk_11 < 2) && ((BattleSystem_BattleType(v0->unk_00) == (0x2 | 0x1)) || (BattleSystem_BattleType(v0->unk_00) == ((0x2 | 0x1) | 0x10)))) || (v0->unk_08->unk_04->unk_11 < 1)) && (Item_LoadParam(v0->unk_04->unk_1C, 38, 5))) {
                        if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                            v0->unk_12 = 17;
                        } else {
                            sub_02005728(1516, -117);
                            v0->unk_12 = 21;
                        }
                    } else {
                        v0->unk_0E = 8;
                    }
                    break;
                case 3:
                    if ((v0->unk_04->unk_1C == 63) || (v0->unk_04->unk_1C == 64)) {
                        v0->unk_0E = 8;
                    } else {
                        if (v0->unk_04->unk_1C == 55) {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 13;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 15;
                            }
                        } else {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 11;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 15;
                            }
                        }
                    }
                    break;
                case 2:
                    v0->unk_0E = 8;
                    break;
                }
            } else {
                v0->unk_0E = 8;
            }

            if (v0->unk_0E != 8) {
                BattleSystem_LoadFightOverlay(v0->unk_00, 0);
            }
        }
        break;
    case 8: {
        BattleItemUse v7;

        if (v0->unk_04->unk_1C == 0) {
            v7.item = 0xff;
        } else {
            v7.item = v0->unk_04->unk_1C;
            v7.pocket = v0->unk_04->unk_1E;

            if ((v0->unk_04->unk_1E == 1) || (v0->unk_04->unk_1E == 0)) {
                v7.target = 1 + v0->unk_08->unk_04->unk_2C[v0->unk_08->unk_04->unk_11];
            }
        }

        ov16_02265A70(v0->unk_00, v0->unk_0D, v7);
        ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

        Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
        Heap_FreeToHeap(v0->unk_08->unk_04);
        Heap_FreeToHeap(v0->unk_08);
        Heap_FreeToHeap(v0->unk_04);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
    } break;
    case 9: {
        MessageLoader *v8;
        BattleMessage v9;

        v9.id = 1206;
        v9.tags = 5;
        v9.params[0] = v0->unk_04->unk_1C;

        v8 = BattleSystem_MessageLoader(v0->unk_00);

        v0->unk_11 = BattleMessage_Print(v0->unk_00, v8, &v9, BattleSystem_TextSpeed(v0->unk_00));
        v0->unk_17 = 30;
        v0->unk_0E++;
    } break;
    case 10:
        if (Text_IsPrinterActive(v0->unk_11) == 0) {
            if (--v0->unk_17 == 0) {
                v0->unk_0E = v0->unk_12;
            }
        }
        break;
    case 11: {
        UnkStruct_ov16_02265BBC v10;

        ov16_02266B78(v0->unk_00, NULL, &v10, 1, 9, v0->unk_0D, v0->unk_0D, NULL);
        ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v10);
    }
        v0->unk_0E++;
        break;
    case 17:
    case 25: {
        UnkStruct_ov16_02265BBC v11;
        int v12;

        v12 = v0->unk_08->unk_04->unk_11 * 2;
        ov16_02266B78(v0->unk_00, NULL, &v11, 1, 9, v12, v12, NULL);
        ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v12), ov16_0223E008(v0->unk_00), &v11);
    }
        v0->unk_0E++;
        break;
    case 13: {
        UnkStruct_ov16_02265BBC v13;

        if (v0->unk_04->unk_1C == 55) {
            ov16_02266B78(v0->unk_00, NULL, &v13, 0, NULL, v0->unk_0D, v0->unk_0D, 54);
            ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v13);
        } else if (v0->unk_04->unk_1C == 56) {
            ov16_02266B78(v0->unk_00, NULL, &v13, 0, NULL, v0->unk_0D, v0->unk_0D, 116);
            ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v13);
        } else {
            ov16_02266B78(v0->unk_00, NULL, &v13, 1, 12, v0->unk_0D, v0->unk_0D, NULL);
            ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v13);
        }

        v0->unk_0E++;
    } break;
    case 15: {
        MessageLoader *v14;
        BattleMessage v15;

        v15.id = 1203;
        v15.tags = 12;
        v15.params[0] = v0->unk_0D | (v0->unk_08->unk_0C[v0->unk_0D] << 8);

        switch (v0->unk_04->unk_1C) {
        case 57:
            v15.params[1] = 0x1;
            break;
        case 58:
            v15.params[1] = 0x2;
            break;
        case 59:
            v15.params[1] = 0x3;
            break;
        case 60:
            v15.params[1] = 0x6;
            break;
        case 61:
            v15.params[1] = 0x4;
            break;
        case 62:
            v15.params[1] = 0x5;
            break;
        case 55:
            v15.id = 1204;
            v15.tags = 0;
            break;
        case 56:
            v15.id = 1205;
            v15.tags = 2;
            break;
        }

        v14 = BattleSystem_MessageLoader(v0->unk_00);
        v0->unk_11 = BattleMessage_Print(v0->unk_00, v14, &v15, BattleSystem_TextSpeed(v0->unk_00));
        v0->unk_17 = 30;
    }
        v0->unk_0E++;
        break;
    case 19:
    case 27: {
        UnkStruct_ov16_02265BBC v16;
        int v17;

        v17 = v0->unk_08->unk_04->unk_11 * 2;
        ov16_02266B78(v0->unk_00, NULL, &v16, 1, 14, v17, v17, NULL);
        ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v17), ov16_0223E008(v0->unk_00), &v16);
    }
        v0->unk_0E++;
        break;
    case 21: {
        Healthbar *v18;
        Pokemon *v19;
        int v20;
        int v21;

        v20 = v0->unk_08->unk_04->unk_11 * 2;
        v21 = v0->unk_08->unk_04->unk_2C[v0->unk_08->unk_04->unk_11];

        v18 = ov16_0223F35C(v0->unk_00, v20);
        MI_CpuClear8(&v18->state, sizeof(u8));
        v18->type = Healthbar_Type(BattleSystem_BattlerSlot(v0->unk_00, v20), BattleSystem_BattleType(v0->unk_00));

        v19 = BattleSystem_PartyPokemon(v0->unk_00, v20, v21);
        v18->curHP = Pokemon_GetValue(v19, MON_DATA_CURRENT_HP, NULL) - v0->unk_08->unk_04->unk_20;
        v18->maxHP = Pokemon_GetValue(v19, MON_DATA_MAX_HP, NULL);
        v18->damage = v0->unk_08->unk_04->unk_20;

        if (Pokemon_GetValue(v19, MON_DATA_STATUS_CONDITION, NULL) == 0) {
            v18->status = 0;
        }

        Healthbar_CalcHP(v18, v18->damage);
    }
        v0->unk_0E++;
        break;
    case 22: {
        Healthbar *v22;
        int v23;

        v23 = v0->unk_08->unk_04->unk_11 * 2;
        v22 = ov16_0223F35C(v0->unk_00, v23);

        if (ov16_022674F8(v22) == -1) {
            Healthbar_DrawInfo(v22, NULL, HEALTHBAR_INFO_STATUS);
            v0->unk_0E++;
        }
    } break;
    case 23: {
        MessageLoader *v24;
        BattleMessage v25;
        int v26;

        v24 = BattleSystem_MessageLoader(v0->unk_00);
        v26 = v0->unk_08->unk_04->unk_11 * 2;

        if (v0->unk_08->unk_04->unk_20) {
            v25.id = 1214;
            v25.tags = 17;
            v25.params[0] = v26 | (v0->unk_08->unk_0C[v26] << 8);
            v25.params[1] = v0->unk_08->unk_04->unk_20;
        } else {
            v25.id = 1250;
            v25.tags = 2;
            v25.params[0] = v26 | (v0->unk_08->unk_0C[v26] << 8);
        }

        v0->unk_11 = BattleMessage_Print(v0->unk_00, v24, &v25, BattleSystem_TextSpeed(v0->unk_00));
        v0->unk_17 = 30;

        v0->unk_0E++;
    } break;
    case 29: {
        Healthbar *v27;
        int v28;
        MessageLoader *v29;
        BattleMessage v30;
        int v31;
        int v32 = 0;
        Pokemon *v33;
        int v34;

        v28 = v0->unk_08->unk_04->unk_11 * 2;
        v27 = ov16_0223F35C(v0->unk_00, v28);
        v34 = v0->unk_08->unk_04->unk_2C[v0->unk_08->unk_04->unk_11];
        v33 = BattleSystem_PartyPokemon(v0->unk_00, v28, v34);

        if (Pokemon_GetValue(v33, MON_DATA_STATUS_CONDITION, NULL) == 0) {
            v27->status = 0;
        }

        Healthbar_DrawInfo(v27, v27->curHP, HEALTHBAR_INFO_STATUS);

        v30.tags = 2;
        v30.params[0] = v28 | (v0->unk_08->unk_0C[v28] << 8);

        if (Item_LoadParam(v0->unk_04->unk_1C, 15, 5)) {
            v31 = 0;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->unk_1C, 16, 5)) {
            v31 = 1;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->unk_1C, 17, 5)) {
            v31 = 2;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->unk_1C, 18, 5)) {
            v31 = 3;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->unk_1C, 19, 5)) {
            v31 = 4;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->unk_1C, 20, 5)) {
            v31 = 5;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->unk_1C, 21, 5)) {
            v31 = 6;
            v32++;
        }

        if (v32 != 1) {
            v30.id = 1229;
        } else {
            switch (v31) {
            case 0:
                v30.id = 1210;
                break;
            case 1:
                v30.id = 1207;
                break;
            case 2:
                v30.id = 1209;
                break;
            case 3:
                v30.id = 1211;
                break;
            case 4:
                v30.id = 1208;
                break;
            case 5:
                v30.id = 1212;
                break;
            case 6:
                v30.id = 1213;
                break;
            }
        }

        v29 = BattleSystem_MessageLoader(v0->unk_00);
        v0->unk_11 = BattleMessage_Print(v0->unk_00, v29, &v30, BattleSystem_TextSpeed(v0->unk_00));
        v0->unk_17 = 30;
    }
        v0->unk_0E++;
        break;

    case 12:
    case 14:
    case 18:
    case 20:
    case 26:
    case 28:
        ov12_0222016C(ov16_0223E008(v0->unk_00));

        if (ov12_02220188(ov16_0223E008(v0->unk_00)) == 0) {
            ov12_02220198(ov16_0223E008(v0->unk_00));
            v0->unk_0E++;
        }
        break;
    case 16:
    case 24:
    case 30:
        if (Text_IsPrinterActive(v0->unk_11) == 0) {
            if (--v0->unk_17 == 0) {
                BattleSystem_LoadFightOverlay(v0->unk_00, 1);
                v0->unk_0E = 8;
            }
        }
        break;
    }
}

static void ov16_02261D50(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D794 *v0 = (UnkStruct_ov16_0225D794 *)param1;
    BattleItemUse v1;

    v1.item = 1;

    ov16_02265A70(v0->unk_00, v0->unk_0D, v1);
    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
    Heap_FreeToHeap(v0->unk_08->unk_04);
    Heap_FreeToHeap(v0->unk_08);
    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02261DA8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D794 *v0 = (UnkStruct_ov16_0225D794 *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
    Heap_FreeToHeap(v0->unk_08->unk_04);
    Heap_FreeToHeap(v0->unk_08);
    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02261DE0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D794 *v0 = (UnkStruct_ov16_0225D794 *)param1;
    BattleItemUse v1;
    u8 v2;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v2) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    v1.item = v2;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v2) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    v1.item |= (v2 << 8);

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v2) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    v1.pocket = v2 & 0xf;
    v1.target = (v2 & 0xf0) >> 8;

    ov16_02265A70(v0->unk_00, v0->unk_0D, v1);
    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
    Heap_FreeToHeap(v0->unk_08->unk_04);
    Heap_FreeToHeap(v0->unk_08);
    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_02261E8C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D840 *v0 = (UnkStruct_ov16_0225D840 *)param1;
    PaletteData *v1;

    v1 = BattleSystem_PaletteSys(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:

    {
        Window *v2 = BattleSystem_Window(v0->unk_00, 0);

        BGL_FillWindow(v2, 0xff);
        sub_0201ACCC(v2);
    }

        v0->unk_17 = ov16_0226CD08(ov16_0223E02C(v0->unk_00));
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 0, 7, 0x0);
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 0, 16, 0x0);
        v0->unk_0A++;
        break;
    case 1:
        if (sub_0200384C(v1) == 0) {
            {
                int v3;
                int v4 = 0;
                int v5;
                int v6, v7;
                Party *v8;
                Pokemon *v9, *v10;

                ov16_0223B384(v0->unk_00);

                v0->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_0221FC20));
                v0->unk_04->unk_00 = Party_New(5);

                if (((BattleSystem_BattleType(v0->unk_00) & (0x4 | 0x8)) == (0x4 | 0x8)) || (BattleSystem_BattleType(v0->unk_00) == (((0x2 | 0x1) | 0x8 | 0x40) | 0x80))) {
                    if (BattleSystem_BattlerSlot(v0->unk_00, v0->unk_09) == 2) {
                        v6 = v0->unk_09;
                        v7 = BattleSystem_Partner(v0->unk_00, v0->unk_09);
                    } else {
                        v6 = BattleSystem_Partner(v0->unk_00, v0->unk_09);
                        v7 = v0->unk_09;
                    }

                    v9 = Pokemon_New(5);

                    for (v3 = 0; v3 < 6; v3++) {
                        Party_AddPokemon(v0->unk_04->unk_00, v9);
                    }

                    Heap_FreeToHeap(v9);

                    for (v3 = 0; v3 < BattleSystem_PartyCount(v0->unk_00, v6); v3++) {
                        v9 = BattleSystem_PartyPokemon(v0->unk_00, v6, v0->unk_1C[v6][v3]);
                        v10 = Party_GetPokemonBySlotIndex(v0->unk_04->unk_00, v3 * 2);
                        Pokemon_Copy(v9, v10);
                        v0->unk_04->unk_2C[v3 * 2] = v0->unk_1C[v6][v3];
                    }

                    for (v3 = 0; v3 < BattleSystem_PartyCount(v0->unk_00, v7); v3++) {
                        v9 = BattleSystem_PartyPokemon(v0->unk_00, v7, v0->unk_1C[v7][v3]);
                        v10 = Party_GetPokemonBySlotIndex(v0->unk_04->unk_00, v3 * 2 + 1);
                        Pokemon_Copy(v9, v10);
                        v0->unk_04->unk_2C[v3 * 2 + 1] = v0->unk_1C[v7][v3];
                    }

                    if (BattleSystem_BattlerSlot(v0->unk_00, v0->unk_09) == 4) {
                        v0->unk_04->unk_11 = 1;
                    } else {
                        v0->unk_04->unk_11 = 0;
                    }
                } else {
                    if ((BattleSystem_BattleType(v0->unk_00) & 0x2) && ((BattleSystem_BattleType(v0->unk_00) & 0x8) == 0)) {
                        v5 = v0->unk_09 & 1;
                    } else {
                        v5 = v0->unk_09;
                    }

                    if (BattleSystem_BattlerSlot(v0->unk_00, v0->unk_09) == 4) {
                        v0->unk_04->unk_11 = 1;
                    } else {
                        v0->unk_04->unk_11 = 0;
                    }

                    v8 = BattleSystem_Party(v0->unk_00, v0->unk_09);

                    for (v3 = 0; v3 < Party_GetCurrentCount(v8); v3++) {
                        v9 = BattleSystem_PartyPokemon(v0->unk_00, v5, v0->unk_1C[v5][v3]);
                        Party_AddPokemon(v0->unk_04->unk_00, v9);
                        v0->unk_04->unk_2C[v3] = v0->unk_1C[v5][v3];
                    }
                }

                v0->unk_04->unk_08 = v0->unk_00;
                v0->unk_04->unk_0C = 5;
                v0->unk_04->unk_36 = 0;
                v0->unk_04->unk_24 = v0->unk_10;
                v0->unk_04->unk_12 = v0->unk_16;
                v0->unk_04->unk_35 = v0->unk_0B;
                v0->unk_04->unk_22 = v0->unk_14;
                v0->unk_04->unk_28 = v0->unk_09;
                v0->unk_04->unk_32 = v0->unk_17;

                if ((v0->unk_18 & FlagIndex(v0->unk_09)) == 0) {
                    v0->unk_04->unk_14 = v0->unk_0C[v0->unk_09];
                } else {
                    v0->unk_04->unk_14 = 6;
                }

                if (BattleSystem_BattleType(v0->unk_00) & 0x8) {
                    v0->unk_04->unk_15 = 6;
                } else if ((v0->unk_18 & FlagIndex(BattleSystem_Partner(v0->unk_00, v0->unk_09))) == 0) {
                    v0->unk_04->unk_15 = v0->unk_0C[BattleSystem_Partner(v0->unk_00, v0->unk_09)];
                } else {
                    v0->unk_04->unk_15 = 6;
                }

                ov13_0221FC20(v0->unk_04);
                v0->unk_0A++;
            }
        }
        break;
    case 2:
        if (v0->unk_04->unk_36) {
            ov16_0223B430(v0->unk_00);
            ov16_0226CD10(ov16_0223E02C(v0->unk_00), v0->unk_04->unk_32);
            sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 7, 0, 0x0);
            sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 16, 0, 0x0);
            v0->unk_0A++;
        }
        break;
    case 3:
        if (sub_0200384C(v1) == 0) {
            sub_02015738(ov16_0223E220(v0->unk_00), 0);

            if (v0->unk_04->unk_11 == 6) {
                ov16_02265B10(v0->unk_00, v0->unk_09, 0xff);
            } else {
                ov16_02265B10(v0->unk_00, v0->unk_09, 1 + v0->unk_04->unk_2C[v0->unk_04->unk_11]);
            }

            ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_FreeToHeap(v0->unk_04->unk_00);
            Heap_FreeToHeap(v0->unk_04);
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_02262258(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D840 *v0 = (UnkStruct_ov16_0225D840 *)param1;
    int v1;
    Party *v2;
    Pokemon *v3;
    int v4, v5;
    u32 v6;

    v6 = BattleSystem_BattleType(v0->unk_00);
    v4 = v0->unk_09;

    if ((v6 & 0x10) || (v6 & 0x8)) {
        v5 = v4;
    } else {
        v5 = BattleSystem_Partner(v0->unk_00, v4);
    }

    v1 = BattleAI_SwitchedSlot(v0->unk_00, v4);

    if (v1 == 6) {
        v1 = BattleAI_PostKOSwitchIn(v0->unk_00, v4);

        if (v1 == 6) {
            v2 = BattleSystem_Party(v0->unk_00, v0->unk_09);

            for (v1 = 0; v1 < Party_GetCurrentCount(v2); v1++) {
                v3 = BattleSystem_PartyPokemon(v0->unk_00, v0->unk_09, v1);

                if ((Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL)) && (v0->unk_0C[v4] != v1) && (v0->unk_0C[v5] != v1)) {
                    break;
                }
            }
        }
    }

    ov16_02265B10(v0->unk_00, v0->unk_09, 1 + v1);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_0226230C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D840 *v0 = (UnkStruct_ov16_0225D840 *)param1;

    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_0226232C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D840 *v0 = (UnkStruct_ov16_0225D840 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_09, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 6)) {
        ov16_02264730(v0->unk_00);
    } else {
        {
            Party *v2;
            Pokemon *v3;
            int v4 = v1 - 1;

            v2 = BattleSystem_Party(v0->unk_00, v0->unk_09);

            if ((v4 == v0->unk_0C[v0->unk_09]) || (v4 == v0->unk_16)) {
                ov16_02264730(v0->unk_00);
            } else if (v1 > Party_GetCurrentCount(v2)) {
                ov16_02264730(v0->unk_00);
            } else {
                v3 = BattleSystem_PartyPokemon(v0->unk_00, v0->unk_09, v1 - 1);

                if (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL) == 0) {
                    ov16_02264730(v0->unk_00);
                }

                if (Pokemon_GetValue(v3, MON_DATA_SPECIES_EGG, NULL) == SPECIES_EGG) {
                    ov16_02264730(v0->unk_00);
                }
            }
        }
    }

    ov16_02265B10(v0->unk_00, v0->unk_09, v1);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_022623F0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D8AC *v0 = param1;
    BGL *v1 = BattleSystem_BGL(v0->unk_00);
    UnkStruct_ov16_02268A14 *v2 = ov16_0223E02C(v0->unk_00);
    int v3;
    Healthbar *v4;
    BattlerData *v5;

    v5 = BattleSystem_BattlerData(v0->unk_00, v0->unk_0D);
    v3 = BattleSystem_Partner(v0->unk_00, v0->unk_0D);

    if (v3 != v0->unk_0D) {
        v4 = ov16_0223F35C(v0->unk_00, v3);
    } else {
        v4 = NULL;
    }

    switch (v0->unk_0E) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        if (v0->unk_10) {
            {
                Window *v6;
                MessageLoader *v7;
                BattleMessage v8;

                v7 = BattleSystem_MessageLoader(v0->unk_00);

                if (v0->unk_0F == 5) {
                    v8.tags = 2 | 0x80;
                    v8.params[0] = v0->unk_14;
                } else {
                    v8.tags = 0;
                }

                v8.id = v0->unk_10;
                v0->unk_1A = BattleMessage_Print(v0->unk_00, v7, &v8, BattleSystem_TextSpeed(v0->unk_00));
            }
        }

        v0->unk_0E = 1;
        break;
    case 1:
        if ((Text_IsPrinterActive(v0->unk_1A) == 0) || (v0->unk_10 == NULL)) {
            {
                NARC *v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
                NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);
                UnkStruct_ov16_022623F0 v11;

                ov16_02269218(v2);

                v11.unk_00 = v0->unk_18;

                switch (v0->unk_0F) {
                case 0:
                case 5:
                    ov16_02268C04(v9, v10, v2, 13, 0, &v11);
                    break;
                case 1:
                    ov16_02268C04(v9, v10, v2, 14, 0, &v11);
                    break;
                case 2:
                    ov16_02268C04(v9, v10, v2, 15, 0, &v11);
                    break;
                case 3:
                    ov16_02268C04(v9, v10, v2, 16, 0, &v11);
                    break;
                case 4:
                    ov16_02268C04(v9, v10, v2, 17, 0, &v11);
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }

                v0->unk_0E = 2;

                NARC_dtor(v9);
                NARC_dtor(v10);
            }
        }
        break;
    case 2:
        v0->unk_08 = ov16_0226925C(v2);

        if (v0->unk_08 != 0xffffffff) {
            Sound_PlayEffect(1501);
            v0->unk_0E = 3;
        }
        break;
    case 3:
        if (ov16_02269348(v2) == 1) {
            {
                NARC *v12 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
                NARC *v13 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v5);
                ov16_0226846C(v4);
                ov16_02269218(v2);
                ov16_02268C04(v12, v13, v2, 0, 0, NULL);

                if (v0->unk_08 == 1) {
                    ov16_0226BCCC(v2, 0);
                }

                v0->unk_0E = 4;

                NARC_dtor(v12);
                NARC_dtor(v13);
            }
        }
        break;
    case 4:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(v0->unk_00, v0->unk_0D, v0->unk_08);
            ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_0226262C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D8AC *v0 = (UnkStruct_ov16_0225D8AC *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_0226264C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D8AC *v0 = (UnkStruct_ov16_0225D8AC *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_0226266C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D8AC *v0 = (UnkStruct_ov16_0225D8AC *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || ((v1 != 0xff) && (v1 != 1))) {
        ov16_02264730(v0->unk_00);
    }

    ov16_022656D4(v0->unk_00, v0->unk_0D, v1);
    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov16_022626C0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D9A8 *v0 = (UnkStruct_ov16_0225D9A8 *)param1;

    switch (v0->unk_6A) {
    case 0:
        if ((v0->unk_10.unk_0E_0) && (v0->unk_10.unk_4C == 0) && (sub_020080C0(v0->unk_08, 6) == 0)) {
            {
                UnkStruct_ov16_02265BBC v1;

                ov16_02266B78(v0->unk_00, NULL, &v1, 1, 15, v0->unk_69, v0->unk_69, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v1);
            }
            v0->unk_6A = 1;
        } else {
            v0->unk_6A = 4;
        }
        break;
    case 2: {
        UnkStruct_ov12_022380DC v2;
        UnkStruct_ov16_02265BBC v3;

        ov16_02264530(v0->unk_00, &v0->unk_10, &v2, v0->unk_69);
        ov12_022382BC(&v2, 5);

        ov16_02266B78(v0->unk_00, NULL, &v3, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v3);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_6A++;
        break;
    case 4:
        BattleSystem_SetRedHPSoundFlag(v0->unk_00, 2);

        if (v0->unk_6B) {
            ov16_0223F3EC(v0->unk_00);
        }

        if (v0->unk_6C) {
            sub_02008B54(ov16_0223E000(v0->unk_00), 0x1);
        }

        ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v0->unk_10);
        v0->unk_6A++;
        break;
    case 6:
        BattleSystem_SetRedHPSoundFlag(v0->unk_00, 0);

        if (v0->unk_6B) {
            ov16_0223F3BC(v0->unk_00);
        }

        if (v0->unk_6C) {
            sub_02008B60(ov16_0223E000(v0->unk_00), 0x1);
        }

        if ((v0->unk_10.unk_0E_0) && (v0->unk_10.unk_4C == 0) && (sub_020080C0(v0->unk_08, 6) == 0)) {
            {
                UnkStruct_ov16_02265BBC v4;

                ov16_02266B78(v0->unk_00, NULL, &v4, 1, 15, v0->unk_69, v0->unk_69, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v4);
            }
            v0->unk_6A = 7;
        } else {
            v0->unk_6A = 10;
        }
        break;
    case 8: {
        UnkStruct_ov12_022380DC v5;
        UnkStruct_ov16_02265BBC v6;

        ov16_02264530(v0->unk_00, &v0->unk_10, &v5, v0->unk_69);
        ov12_02238390(&v5, 5);

        ov16_02266B78(v0->unk_00, NULL, &v6, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v6);
        v0->unk_04->unk_19C = 1;
    }
        v0->unk_6A++;
        break;
    case 10:
        ClearCommand(v0->unk_00, v0->unk_69, v0->unk_68);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
        ov12_0222016C(v0->unk_0C);

        if (ov12_02220188(v0->unk_0C) == 0) {
            ov12_02220198(v0->unk_0C);
            v0->unk_6A++;
        }
        break;
    }
}

static void ov16_0226292C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DA44 *v0 = (UnkStruct_ov16_0225DA44 *)param1;
    int v1;

    if (v0->unk_09 < 6) {
        if (v0->unk_0A == 0) {
            v0->unk_0A = 2;
            v0->unk_09++;
            v1 = sub_020080C0(v0->unk_04, 6);
            v1 ^= 1;
            sub_02007DEC(v0->unk_04, 6, v1);
        } else {
            v0->unk_0A--;
        }
    } else {
        v1 = 0;
        sub_02007DEC(v0->unk_04, 6, v1);
        ClearCommand(v0->unk_00, v0->unk_08, 23);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
    }
}

static void ov16_02262988(SysTask *param0, void *param1)
{
    Healthbar *v0 = param1;
    int v1;

    switch (v0->state) {
    case 0:
        Healthbar_CalcHP(v0, v0->damage);
        v0->state++;
    case 1:
        v1 = ov16_022674F8(v0);

        if (v1 == -1) {
            v0->state++;
        }
        break;
    default:
        ClearCommand(v0->battleSys, v0->battler, v0->unk_4C);
        v0->unk_10 = NULL;
        SysTask_Done(param0);
        return;
    }
}

static void ov16_022629DC(SysTask *param0, void *param1)
{
    Healthbar *v0 = param1;
    int v1;

    switch (v0->state) {
    case 0:
        v0->unk_4E = 0;
        Sound_PlayEffect(1803);
        Healthbar_CalcExp(v0, v0->expReward);
        v0->state++;
    case 1:
        if (v0->unk_4E < 8) {
            v0->unk_4E++;
        }

        v1 = ov16_02267560(v0);

        if (v1 == -1) {
            if (v0->unk_4E >= 8) {
                sub_020057A4(1803, 0);
                v0->state = 100;
            } else {
                v0->state++;
            }
        }
        break;
    case 2:
        v0->unk_4E++;

        if (v0->unk_4E >= 8) {
            sub_020057A4(1803, 0);
            v0->state = 100;
        }
        break;
    default:
        ClearCommand(v0->battleSys, v0->battler, v0->unk_4C);
        v0->unk_10 = NULL;
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02262A9C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DB74 *v0 = (UnkStruct_ov16_0225DB74 *)param1;
    UnkStruct_ov12_0221FCDC *v1 = ov16_0223E008(v0->unk_00);
    int v2;
    int v3;

    switch (v0->unk_66) {
    case 0:
        if (v0->unk_70) {
            {
                UnkStruct_ov16_02265BBC v4;

                ov16_02266B78(v0->unk_00, NULL, &v4, 1, 15, v0->unk_65, v0->unk_65, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
            }
            v0->unk_66++;
        } else {
            v0->unk_66 = 4;
        }
        break;
    case 2: {
        UnkStruct_ov12_022380DC v5;
        UnkStruct_ov16_02265BBC v6;

        ov16_02264530(v0->unk_00, &v0->unk_0C, &v5, v0->unk_65);
        ov12_022382BC(&v5, 5);

        ov16_02266B78(v0->unk_00, NULL, &v6, 1, 16, v0->unk_65, v0->unk_65, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v6);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_66++;
        break;
    case 1:
    case 3:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_66++;
        }
        break;
    case 4: {
        int v7;

        if (v0->unk_67 == 2) {
            v7 = 117;
        } else {
            v7 = -117;
        }

        Pokemon_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_65), 5, v0->unk_68, v0->unk_6B, v7, 127, v0->unk_72, 5, 0);
        v0->unk_66++;
    }
    case 5:
        if (sub_0200598C() == 0) {
            v0->unk_66++;
        }
        break;
    case 6:
        if (v0->unk_67 == 2) {
            sub_02005728(1795, 117);
        } else {
            sub_02005728(1795, -117);
        }

        if (sub_020080C0(v0->unk_08, 41) > 0) {
            v0->unk_66 = 7;
        } else {
            v0->unk_66 = 8;
        }
        break;
    case 7:
        v3 = sub_020080C0(v0->unk_08, 41);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        sub_02007DEC(v0->unk_08, 41, v3);

        if (v3) {
            break;
        }

        v0->unk_66++;
    case 8:
        v3 = LoadPokemonSpriteYOffset(v0->unk_68, v0->unk_6A, v0->unk_67, v0->unk_6B, v0->unk_6C);
        v3 = 80 - v3;
        sub_020086D4(v0->unk_08, 0, 0, 80, v3);
        v0->unk_66++;
        break;
    case 9:
        v2 = sub_020080C0(v0->unk_08, 1);
        v2 += 8;
        sub_02007DEC(v0->unk_08, 1, v2);
        v3 = sub_020080C0(v0->unk_08, 18);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        sub_02007DEC(v0->unk_08, 18, v3);

        if (v3 == 0) {
            sub_02007DC8(v0->unk_08);
            v0->unk_66++;
        }
        break;
    case 10:
        ClearCommand(v0->unk_00, v0->unk_65, v0->unk_64);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02262D28(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DC7C *v0 = (UnkStruct_ov16_0225DC7C *)param1;
    PaletteData *v1;
    UnkStruct_02007768 *v2;

    v1 = BattleSystem_PaletteSys(v0->unk_00);
    v2 = ov16_0223E000(v0->unk_00);

    switch (v0->unk_06) {
    case 0:
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        sub_02003178(v1, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
        sub_0200872C(v2, 0, 16, 0, 0x0);
        sub_0200564C(0, 16);
        v0->unk_06++;
    case 1:
        if (sub_0200384C(v1) == 0) {
            v0->unk_06++;
        }
        break;
    case 2:
        ClearCommand(v0->unk_00, v0->unk_05, v0->unk_04);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02262DC4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DCB0 *v0;
    UnkStruct_ov12_0221FCDC *v1;

    v0 = (UnkStruct_ov16_0225DCB0 *)param1;
    v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_62) {
    case 0:
        if (v0->unk_04->unk_20) {
            sub_02007DEC(v0->unk_04->unk_20, 6, v0->unk_63);

            if (v0->unk_63 == 1) {
                v0->unk_62 = 0xff;
            } else {
                v0->unk_62++;
            }
        } else {
            v0->unk_62 = 0xff;
        }
        break;
    case 1:
        if ((v0->unk_64) && (v0->unk_04->unk_19C == 0)) {
            {
                UnkStruct_ov16_02265BBC v2;

                ov16_02266B78(v0->unk_00, NULL, &v2, 1, 15, v0->unk_61, v0->unk_61, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v2);
            }
            v0->unk_62++;
        } else {
            v0->unk_62 = 0xff;
        }
        break;
    case 3: {
        UnkStruct_ov12_022380DC v3;
        UnkStruct_ov16_02265BBC v4;

        ov16_02264530(v0->unk_00, &v0->unk_08, &v3, v0->unk_61);
        ov12_02238390(&v3, 5);

        ov16_02266B78(v0->unk_00, NULL, &v4, 1, 16, v0->unk_61, v0->unk_61, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
        v0->unk_04->unk_19C = 1;
    }
        v0->unk_62++;
        break;
    case 2:
    case 4:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_62++;
        }
        break;
    default:
        ClearCommand(v0->unk_00, v0->unk_61, v0->unk_60);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02262F30(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DF34 *v0 = (UnkStruct_ov16_0225DF34 *)param1;

    switch (v0->unk_0A) {
    case 0:
        ov16_0226834C(v0->unk_04, &v0->unk_0B);
        Sound_PlayEffect(1804);
        v0->unk_0A++;
        break;
    case 1:
        if (v0->unk_0B == 1) {
            ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void WaitForBattleMessagePrint(SysTask *task, void *data)
{
    BattleMessageWaitTask *waitTask = data;

    if (Battle_WaitDial(waitTask->battleSys)) {
        DeleteWaitDial(Battle_WaitDial(waitTask->battleSys));
        Battle_SetWaitDial(waitTask->battleSys, NULL);
    }

    if (Text_IsPrinterActive(waitTask->msgIdx) == FALSE) {
        ClearCommand(waitTask->battleSys, waitTask->battler, waitTask->command);
        Heap_FreeToHeap(data);
        SysTask_Done(task);
    }
}

static void ov16_02262FC0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DF6C *v0 = (UnkStruct_ov16_0225DF6C *)param1;

    switch (v0->unk_07) {
    case 0:
        if (Text_IsPrinterActive(v0->unk_06) == 0) {
            v0->unk_07++;
            v0->unk_08 = 0;
        }
        break;
    case 1:
        if (++v0->unk_08 == 40) {
            ov16_022661B0(v0->unk_00, v0->unk_05);
            ClearCommand(v0->unk_00, v0->unk_05, v0->unk_04);
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static const u8 Unk_ov16_0226F31C[] = {
    0x9,
    0x17,
    0x5,
    0x13,
    0xD,
    0x11,
    0xF,
    0x7,
    0x15,
    0xB,
    0x19,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0x15,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB
};

static const int Unk_ov16_0226F1D0[] = {
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x0,
    0x0,
    0x0,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF
};

static void ov16_02263014(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225CBB8 *v0 = (UnkStruct_ov16_0225CBB8 *)param1;
    BGL *v1;
    PaletteData *v2;
    int v3;
    int v4;

    v1 = BattleSystem_BGL(v0->unk_00);
    v2 = BattleSystem_PaletteSys(v0->unk_00);
    v3 = BattleSystem_Terrain(v0->unk_00);
    v4 = Unk_ov16_0226F1D0[ov16_0223E240(v0->unk_00)];

    v0->unk_15++;

    switch (v0->unk_14) {
    case 0: {
        UnkStruct_ov12_02237F38 v5;

        v0->unk_04 = ov12_02237EFC(5, NULL);

        v5.unk_00 = Unk_ov16_0226F31C[v3];
        v5.unk_04 = 1;

        v0->unk_08[0] = ov12_02237F38(v0->unk_04, &v5);

        v5.unk_00 = Unk_ov16_0226F31C[v3] + 1;
        v5.unk_04 = 1;

        v0->unk_08[1] = ov12_02237F38(v0->unk_04, &v5);

        ov12_02238004(v0->unk_08[0]);
        Sound_PlayEffect(2127);

        v0->unk_14 = 1;
    }

    case 1:

        if (v0->unk_15 == 10) {
            sub_02003178(v2, 0x1, 0xf3ff, 0, 0, 16, v4);
            sub_02003178(v2, 0x4, 0x3fff, 0, 0, 16, v4);
        }

        if ((v0->unk_15 >= 10) && (v0->unk_16 < 16)) {
            u16 v6, v7;
            u16 *v8;

            v0->unk_16++;

            if (v0->unk_16 > 16) {
                v0->unk_16 = 16;
            }

            v8 = sub_0200316C(v2, 1);

            for (v6 = 0; v6 < 256; v6++) {
                v7 = (0 + ((0x1f - 0) * v0->unk_16 >> 4));
                v8[v6] = v7 | (v7 << 5) | (v7 << 10);
            }
        }

        if (v0->unk_15 == 20) {
            ov12_02238004(v0->unk_08[1]);
        }

        if (v0->unk_15 == 23) {
            Sound_PlayEffect(2128);
        }

        if (v0->unk_15 == 28) {
            MI_CpuCopy16(ov16_0223F204(v0->unk_00), sub_02003164(v2, 0), 0x20 * 7);

            if (BattleSystem_BattleType(v0->unk_00) == (0x2 | 0x8 | 0x40)) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
            } else if (BattleSystem_BattleType(v0->unk_00) & 0x2) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 7);
            } else if (BattleSystem_BattleType(v0->unk_00) & 0x1) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
            } else {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 4);
            }

            sub_02003178(v2, 0x1, 0xf3ff, 0, 16, 0, v4);
            sub_02003178(v2, 0x4, 0x3fff, 0, 16, 0, v4);
            sub_02003178(v2, (0x2 | 0x8), 0xffff, 0, 16, 0, v4);
        }

        if (v0->unk_15 >= 50) {
            sub_02003178(v2, 0x1, 0xc00, 0, 16, 0, 0x0);
            v0->unk_14++;
        }
        break;
    case 2:
        if (ov12_0223802C(v0->unk_08[1]) == 0) {
            ov12_02237F74(v0->unk_04);
            v0->unk_14++;
        }
        break;
    case 3:
        sub_02015738(ov16_0223E220(v0->unk_00), 0);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    case 4:
        ov12_02237F98(v0->unk_04);
        ov12_02237F74(v0->unk_04);
        v0->unk_14++;
    case 5:
        MI_CpuCopy16(ov16_0223F204(v0->unk_00), sub_02003164(v2, 0), 0x20 * 7);

        if (BattleSystem_BattleType(v0->unk_00) == (0x2 | 0x8 | 0x40)) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
        } else if (BattleSystem_BattleType(v0->unk_00) & 0x2) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 7);
        } else if (BattleSystem_BattleType(v0->unk_00) & 0x1) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
        } else {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 4);
        }

        sub_02003178(v2, 0x1, 0xffff, 0, 0, 0, 0x7fff);
        sub_02003178(v2, 0x4, 0x3fff, 0, 0, 0, 0xffff);
        sub_02003178(v2, (0x2 | 0x8), 0xffff, 0, 0, 0, 0x7fff);
        v0->unk_14 = 3;
        break;
    }
}

static void ov16_022633A4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E0BC *v0 = (UnkStruct_ov16_0225E0BC *)param1;
    PaletteData *v1;

    v1 = BattleSystem_PaletteSys(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 0, 16, 0x0);
        v0->unk_0A++;
        break;
    case 1:
        if (sub_0200384C(v1) == 0) {
            ov16_0223B384(v0->unk_00);

            v0->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_0221FC20));
            v0->unk_04->unk_00 = BattleSystem_Party(v0->unk_00, v0->unk_09);
            v0->unk_04->unk_08 = v0->unk_00;
            v0->unk_04->unk_0C = 5;
            v0->unk_04->unk_11 = v0->unk_0E;
            v0->unk_04->unk_24 = v0->unk_0C;
            v0->unk_04->unk_36 = 0;
            v0->unk_04->unk_12 = 0;
            v0->unk_04->unk_35 = 3;
            v0->unk_04->unk_22 = 0;
            v0->unk_04->unk_28 = v0->unk_09;
            v0->unk_04->unk_32 = 0;

            ov13_0221FC20(v0->unk_04);
            v0->unk_0A++;
        }
        break;
    case 2:
        if (v0->unk_04->unk_36) {
            ov16_0223B430(v0->unk_00);
            sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 16, 0, 0x0);
            v0->unk_0A++;
        }
        break;
    case 3:
        if (sub_0200384C(v1) == 0) {
            if (v0->unk_04->unk_34 == 4) {
                ov16_02265B10(v0->unk_00, v0->unk_09, 0xff);
            } else {
                ov16_02265B10(v0->unk_00, v0->unk_09, v0->unk_04->unk_34 + 1);
            }

            ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

            Heap_FreeToHeap(v0->unk_04);
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_022634DC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E0F4 *v0 = (UnkStruct_ov16_0225E0F4 *)param1;
    int v1;

    switch (v0->unk_0A) {
    case 0:
        if (v0->unk_0C == v0->unk_0D) {
            v0->unk_0C = 0;
            v1 = sub_020080C0(v0->unk_04, 40);

            if (v1 > v0->unk_0B) {
                v1--;
            } else if (v1 < v0->unk_0B) {
                v1++;
            }

            sub_02007DEC(v0->unk_04, 40, v1);

            if (v1 == v0->unk_0B) {
                v0->unk_0A++;
            }
        } else {
            v0->unk_0C++;
        }
        break;
    case 1:
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ShowPartyGaugeTask(SysTask *param0, void *param1)
{
    PartyGaugeTask *v0 = (PartyGaugeTask *)param1;
    enum PartyGaugeSide v1;
    enum ShowPartyGaugeType v2;

    if (Battler_Side(v0->battleSys, v0->battler) == 0) {
        v1 = PARTY_GAUGE_OURS;
    } else {
        v1 = PARTY_GAUGE_THEIRS;
    }

    switch (v0->state) {
    case 0: {
        PartyGauge *v3;
        enum ShowPartyGaugeType v4;
        enum PartyGaugePosition v5;

        if (v0->midBattle == 0) {
            v4 = SHOW_PARTY_GAUGE_BATTLE_START;
            v5 = PARTY_GAUGE_POSITION_MIDDLE;
        } else {
            v4 = SHOW_PARTY_GAUGE_MID_BATTLE;

            switch (v0->battlerType) {
            case 3:
                v5 = PARTY_GAUGE_POSITION_HIGH;
                break;
            case 5:
                v5 = PARTY_GAUGE_POSITION_LOW;
                break;
            default:
                v5 = PARTY_GAUGE_POSITION_MIDDLE;
                break;
            }
        }

        v3 = PartyGauge_Show(v0->status, v1, v4, v5, ov16_0223E010(v0->battleSys), ov16_0223E018(v0->battleSys));
        ov16_0223E040(v0->battleSys, v1, v3);
    }
        v0->state++;
        break;
    case 1:
        if (PartyGauge_ShowIsDone(ov16_0223E034(v0->battleSys, v1)) == 1) {
            v0->state++;
        }
        break;
    default:
        ClearCommand(v0->battleSys, v0->battler, v0->command);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void HidePartyGaugeTask(SysTask *param0, void *param1)
{
    PartyGaugeTask *v0 = (PartyGaugeTask *)param1;
    enum PartyGaugeSide v1;
    PartyGauge *v2;
    enum HideArrowType v3;
    enum HidePartyGaugeType v4;

    if (Battler_Side(v0->battleSys, v0->battler) == 0) {
        v1 = PARTY_GAUGE_OURS;
    } else {
        v1 = PARTY_GAUGE_THEIRS;
    }

    v2 = ov16_0223E034(v0->battleSys, v1);

    switch (v0->state) {
    case 0:
        if (v0->midBattle == 0) {
            v3 = HIDE_ARROW_FADE_AND_SCROLL;
            v4 = HIDE_PARTY_GAUGE_BATTLE_START;
        } else {
            v3 = HIDE_ARROW_FADE_IN_PLACE;
            v4 = HIDE_PARTY_GAUGE_MID_BATTLE;
        }

        PartyGauge_Hide(v2, v3, v4);
        v0->state++;
        break;
    case 1:
        if (PartyGauge_HideIsDone(v2) == 1) {
            PartyGauge_Free(v2);
            ov16_0223E040(v0->battleSys, v1, NULL);
            v0->state++;
        }
        break;
    default:
        ClearCommand(v0->battleSys, v0->battler, v0->command);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02263688(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E2C8 *v0 = (UnkStruct_ov16_0225E2C8 *)param1;

    switch (v0->unk_0E) {
    case 0:
        GF_ASSERT(v0->unk_04->unk_88 == NULL);
        v0->unk_04->unk_88 = ov12_022234F8(v0->unk_00, 5, v0->unk_0D);
        v0->unk_0E++;
        break;
    default:
        ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_022636D4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E300 *v0 = (UnkStruct_ov16_0225E300 *)param1;

    GF_ASSERT(v0->unk_04->unk_88 != NULL);

    if (ov12_022237D8(v0->unk_04->unk_88) == 3) {
        if (v0->unk_0E < 5) {
            v0->unk_0E++;
            return;
        }
    }

    ov12_022237A4(v0->unk_04->unk_88, v0->unk_0D);
    v0->unk_04->unk_88 = NULL;
    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

void ov16_02263730(BattleSystem *param0, BattlerData *param1)
{
    u32 v0 = BattleSystem_BattleType(param0);
    u32 v1 = BattleSystem_BattleStatus(param0);

    if (v0 & 0x40) {
        if (param1->battler) {
            param1->unk_00.unk_00 = &ov16_02260AB4;
            param1->unk_00.unk_04 = &ov16_02260DB0;
            param1->unk_00.unk_08 = &ov16_022610A8;
            param1->unk_00.unk_0C = &ov16_02261D50;
            param1->unk_00.unk_10 = &ov16_02262258;
            param1->unk_00.unk_14 = &ov16_0226262C;
            param1->bootState = 0x1;
        } else {
            if (v1 & 0x10) {
                param1->unk_00.unk_00 = &ov16_02260BAC;
                param1->unk_00.unk_04 = &ov16_02260E98;
                param1->unk_00.unk_08 = &ov16_0226110C;
                param1->unk_00.unk_0C = &ov16_02261DE0;
                param1->unk_00.unk_10 = &ov16_0226232C;
                param1->unk_00.unk_14 = &ov16_0226266C;
                param1->bootState = 0x0;
            } else {
                param1->unk_00.unk_00 = &ov16_022604C8;
                param1->unk_00.unk_04 = &ov16_02260C00;
                param1->unk_00.unk_08 = &ov16_02260F14;
                param1->unk_00.unk_0C = &ov16_022611DC;
                param1->unk_00.unk_10 = &ov16_02261E8C;
                param1->unk_00.unk_14 = &ov16_022623F0;
                param1->bootState = 0x0;
            }
        }
    } else if ((v0 & (0x8 | 0x80)) == (0x8 | 0x80)) {
        if (param1->battlerType & 0x1) {
            if (ov16_0223ED60(param0)) {
                param1->unk_00.unk_00 = &ov16_02260AB4;
                param1->unk_00.unk_04 = &ov16_02260DB0;
                param1->unk_00.unk_08 = &ov16_022610A8;
                param1->unk_00.unk_0C = &ov16_02261D50;
                param1->unk_00.unk_10 = &ov16_02262258;
                param1->unk_00.unk_14 = &ov16_0226262C;
                param1->bootState = 0x1;
            } else {
                param1->unk_00.unk_00 = &ov16_02260AE4;
                param1->unk_00.unk_04 = &ov16_02260E78;
                param1->unk_00.unk_08 = &ov16_022610EC;
                param1->unk_00.unk_0C = &ov16_02261DA8;
                param1->unk_00.unk_10 = &ov16_0226230C;
                param1->unk_00.unk_14 = &ov16_0226264C;
                param1->bootState = 0x2;
            }
        } else if (v1 & 0x10) {
            param1->unk_00.unk_00 = &ov16_02260BAC;
            param1->unk_00.unk_04 = &ov16_02260E98;
            param1->unk_00.unk_08 = &ov16_0226110C;
            param1->unk_00.unk_0C = &ov16_02261DE0;
            param1->unk_00.unk_10 = &ov16_0226232C;
            param1->unk_00.unk_14 = &ov16_0226266C;
            param1->bootState = 0x0;
        } else if (param1->battlerType != BattleSystem_BattlerSlot(param0, ov16_0223F6E4(param0) * 2)) {
            param1->unk_00.unk_00 = &ov16_02260AE4;
            param1->unk_00.unk_04 = &ov16_02260E78;
            param1->unk_00.unk_08 = &ov16_022610EC;
            param1->unk_00.unk_0C = &ov16_02261DA8;
            param1->unk_00.unk_10 = &ov16_0226230C;
            param1->unk_00.unk_14 = &ov16_0226264C;
            param1->bootState = 0x2;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = &ov16_02260C00;
            param1->unk_00.unk_08 = &ov16_02260F14;
            param1->unk_00.unk_0C = &ov16_022611DC;
            param1->unk_00.unk_10 = &ov16_02261E8C;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->bootState = 0x0;
        }
    } else if (v0 & 0x8) {
        if (v1 & 0x10) {
            param1->unk_00.unk_00 = &ov16_02260BAC;
            param1->unk_00.unk_04 = &ov16_02260E98;
            param1->unk_00.unk_08 = &ov16_0226110C;
            param1->unk_00.unk_0C = &ov16_02261DE0;
            param1->unk_00.unk_10 = &ov16_0226232C;
            param1->unk_00.unk_14 = &ov16_0226266C;
            param1->bootState = 0x0;
        } else if (param1->battlerType != BattleSystem_BattlerSlot(param0, ov16_0223F6E4(param0))) {
            param1->unk_00.unk_00 = &ov16_02260AE4;
            param1->unk_00.unk_04 = &ov16_02260E78;
            param1->unk_00.unk_08 = &ov16_022610EC;
            param1->unk_00.unk_0C = &ov16_02261DA8;
            param1->unk_00.unk_10 = &ov16_0226230C;
            param1->unk_00.unk_14 = &ov16_0226264C;
            param1->bootState = 0x2;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = &ov16_02260C00;
            param1->unk_00.unk_08 = &ov16_02260F14;
            param1->unk_00.unk_0C = &ov16_022611DC;
            param1->unk_00.unk_10 = &ov16_02261E8C;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->bootState = 0x0;
        }
    } else if (v0 & 0x4) {
        if (v1 & 0x10) {
            param1->unk_00.unk_00 = &ov16_02260BAC;
            param1->unk_00.unk_04 = &ov16_02260E98;
            param1->unk_00.unk_08 = &ov16_0226110C;
            param1->unk_00.unk_0C = &ov16_02261DE0;
            param1->unk_00.unk_10 = &ov16_0226232C;
            param1->unk_00.unk_14 = &ov16_0226266C;
            param1->bootState = 0x0;
        } else if (param1->battlerType & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260AE4;
            param1->unk_00.unk_04 = &ov16_02260E78;
            param1->unk_00.unk_08 = &ov16_022610EC;
            param1->unk_00.unk_0C = &ov16_02261DA8;
            param1->unk_00.unk_10 = &ov16_0226230C;
            param1->unk_00.unk_14 = &ov16_0226264C;
            param1->bootState = 0x2;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = &ov16_02260C00;
            param1->unk_00.unk_08 = &ov16_02260F14;
            param1->unk_00.unk_0C = &ov16_022611DC;
            param1->unk_00.unk_10 = &ov16_02261E8C;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->bootState = 0x0;
        }
    } else if (v0 & 0x200) {
        if (param1->battlerType & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260B84;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = NULL;
            param1->bootState = 0x1;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = NULL;
            param1->bootState = 0x0;
        }
    } else if (v0 & 0x20) {
        if (param1->battlerType & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260B04;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = NULL;
            param1->bootState = 0x1;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->bootState = 0x0;
        }
    } else {
        if (param1->battlerType & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260AB4;
            param1->unk_00.unk_04 = &ov16_02260DB0;
            param1->unk_00.unk_08 = &ov16_022610A8;
            param1->unk_00.unk_0C = &ov16_02261D50;
            param1->unk_00.unk_10 = &ov16_02262258;
            param1->unk_00.unk_14 = &ov16_0226262C;
            param1->bootState = 0x1;
        } else {
            if (v1 & 0x10) {
                param1->unk_00.unk_00 = &ov16_02260BAC;
                param1->unk_00.unk_04 = &ov16_02260E98;
                param1->unk_00.unk_08 = &ov16_0226110C;
                param1->unk_00.unk_0C = &ov16_02261DE0;
                param1->unk_00.unk_10 = &ov16_0226232C;
                param1->unk_00.unk_14 = &ov16_0226266C;
                param1->bootState = 0x0;
            } else {
                param1->unk_00.unk_00 = &ov16_022604C8;
                param1->unk_00.unk_04 = &ov16_02260C00;
                param1->unk_00.unk_08 = &ov16_02260F14;
                param1->unk_00.unk_0C = &ov16_022611DC;
                param1->unk_00.unk_10 = &ov16_02261E8C;
                param1->unk_00.unk_14 = &ov16_022623F0;
                param1->bootState = 0x0;
            }
        }
    }
}

u8 Battler_Type(BattlerData *param0)
{
    return param0->battlerType;
}

u8 Battler_BootState(BattlerData *battler)
{
    return battler->bootState;
}

Sprite *ov16_02263AFC(BattlerData *param0)
{
    if (param0->unk_20) {
        return param0->unk_20;
    } else {
        return param0->unk_1C;
    }
}

Healthbar *ov16_02263B08(BattlerData *param0)
{
    return &param0->healthbar;
}

UnkStruct_ov16_0226C378 *ov16_02263B0C(BattlerData *param0)
{
    return &param0->unk_7B;
}

void ov16_02263B10(BattlerData *param0)
{
    MI_CpuClear8(&param0->unk_7B, sizeof(UnkStruct_ov16_0226C378));
}

void ov16_02263B20(BattlerData *param0, int param1)
{
    if (param0->unk_18 == NULL) {
        return;
    }

    SpriteActor_EnableObject(param0->unk_18, param1);
}

static Sprite *ov16_02263B30(BattleSystem *param0, UnkStruct_02007768 *param1, ArchivedSprite *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, SpriteAnimationFrame *param11, UnkFuncPtr_02007C34 *param12)
{
    Sprite *v0;
    u8 *v1 = ov16_0223F2B8(ov16_0223E0C8(param0), param10);
    int v2;
    int v3;

    v2 = BattleSystem_BattlerSlot(param0, param10);

    if (v2 & 0x1) {
        v3 = 2;
    } else {
        v3 = 0;
    }

    sub_02013750(param2->archive, param2->character, 5, v1, param2->personality, 0, v3, param2->spindaSpots);
    ov16_0223F2CC(ov16_0223E0C8(param0), param10, param2->archive);
    ov16_0223F2E4(ov16_0223E0C8(param0), param10, param2->palette);
    ov16_0223F2FC(ov16_0223E0C8(param0), param10, param6);

    v0 = sub_02007C7C(param1, param2, param3, param4 + param6, param5, param10, param10, param11, param12);

    if (v2 & 0x1) {
        if (v2 > 1) {
            v2 = v2 >> 1;
        }

        sub_02007DEC(v0, 42, v2);
        sub_02007DEC(v0, 46, param9);
        sub_02007DEC(v0, 20, (param4 + param6) + (36 - param6));
        sub_02007DEC(v0, 21, param8);
        sub_02007DEC(v0, 22, 36 - param6);
        sub_02007DEC(v0, 41, param7);
    }

    return v0;
}

static void ov16_02263C1C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3F8 *param2, BattleMessage *param3)
{
    if (param1->battlerType & 0x1) {
        if (BattleSystem_BattleType(param0) & 0x4) {
            param3->id = 990;
            param3->tags = 27;
            param3->params[0] = param1->battler;
            param3->params[1] = param1->battler | (param2->unk_01 << 8);
        } else {
            param3->id = 989;
            param3->tags = 50;
            param3->params[0] = param1->battler;
            param3->params[1] = param1->battler;
            param3->params[2] = param1->battler | (param2->unk_01 << 8);
        }
    } else {
        if (((BattleSystem_BattleType(param0) & 0x2) == 0) && ((BattleSystem_BattleType(param0) & 0x4) == 0)) {
            if (param2->unk_02 == 0) {
                param3->id = 984;
            } else if (param2->unk_02 < 25) {
                param3->id = 985;
            } else if (param2->unk_02 < 50) {
                param3->id = 988;
            } else if (param2->unk_02 < 75) {
                param3->id = 986;
            } else {
                param3->id = 987;
            }
        } else {
            param3->id = 985;
        }

        param3->tags = 2;
        param3->params[0] = param1->battler | (param2->unk_01 << 8);
    }
}

static void ov16_02263CF0(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C40C *param2, BattleMessage *param3)
{
    if (param1->battlerType & 0x1) {
        if ((BattleSystem_BattleType(param0) & 0x4) == 0) {
            param3->id = 972;
            param3->tags = 50;
            param3->params[0] = param1->battler;
            param3->params[1] = param1->battler;
            param3->params[2] = param1->battler | (param2->unk_01 << 8);
        } else {
            param3->id = 974;
            param3->tags = 27;
            param3->params[0] = param1->battler;
            param3->params[1] = param1->battler | (param2->unk_01 << 8);
        }
    } else {
        if (((BattleSystem_BattleType(param0) & 0x2) == 0) && ((BattleSystem_BattleType(param0) & 0x4) == 0)) {
            if (param2->unk_02 < 100) {
                param3->id = 982;
            } else if (param2->unk_02 < 325) {
                param3->id = 983;
            } else if (param2->unk_02 < 550) {
                param3->id = 981;
            } else if (param2->unk_02 < 775) {
                param3->id = 980;
            } else {
                param3->id = 979;
            }
        } else {
            param3->id = 979;
        }

        param3->tags = 2;
        param3->params[0] = param1->battler | (param2->unk_01 << 8);
    }
}

static void ov16_02263DD0(BattleSystem *param0, BattlerData *param1, BattleMessage *param2)
{
    u32 v0;
    int v1;
    int v2;

    v0 = BattleSystem_BattleType(param0);

    if (v0 & 0x2) {
        v1 = BattleSystem_BattlerOfType(param0, 3);
        v2 = BattleSystem_BattlerOfType(param0, 5);
    } else {
        v1 = BattleSystem_BattlerOfType(param0, 1);
        v2 = v1;
    }

    if (v0 & 0x4) {
        if (v0 & 0x80) {
            param2->id = 992;
            param2->tags = 59;
            param2->params[0] = v1;
            param2->params[1] = v1;
            param2->params[2] = v2;
            param2->params[3] = v2;
        } else if (v0 & 0x8) {
            param2->id = 971;
            param2->tags = 26;
            param2->params[0] = v1;
            param2->params[1] = v2;
        } else {
            param2->id = 970;
            param2->tags = 8;
            param2->params[0] = v1;
        }
    } else {
        if ((v0 & 0x10) || (v0 & 0x8)) {
            param2->id = 992;
            param2->tags = 59;
            param2->params[0] = v1;
            param2->params[1] = v1;
            param2->params[2] = v2;
            param2->params[3] = v2;
        } else {
            param2->id = 969;
            param2->tags = 30;
            param2->params[0] = v1;
            param2->params[1] = v1;
        }
    }
}

static void ov16_02263E7C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C430 *param2, BattleMessage *param3)
{
    u32 v0;
    int v1;
    int v2;

    v0 = BattleSystem_BattleType(param0);

    if (param1->battlerType & 0x1) {
        if (v0 & 0x2) {
            v1 = param1->battler;
            v2 = BattleSystem_Partner(param0, param1->battler);
        } else {
            v1 = param1->battler;
            v2 = v1;
        }

        if (v0 & 0x4) {
            if (v0 & 0x80) {
                param3->id = 991;
                param3->tags = 60;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
                param3->params[3] = v2;
                param3->params[4] = v2;
                param3->params[5] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x8) {
                param3->id = 976;
                param3->tags = 56;
                param3->params[0] = v1;
                param3->params[1] = v1 | (param2->unk_04[v1] << 8);
                param3->params[2] = v2;
                param3->params[3] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->id = 975;
                param3->tags = 49;
                param3->params[0] = v1;
                param3->params[1] = v1 | (param2->unk_04[v1] << 8);
                param3->params[2] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->id = 974;
                param3->tags = 27;
                param3->params[0] = v1;
                param3->params[1] = v1 | (param2->unk_04[v1] << 8);
            }
        } else {
            if ((v0 & 0x10) || (v0 & 0x8)) {
                param3->id = 991;
                param3->tags = 60;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
                param3->params[3] = v2;
                param3->params[4] = v2;
                param3->params[5] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->id = 973;
                param3->tags = 57;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
                param3->params[3] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->id = 972;
                param3->tags = 50;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
            }
        }
    } else {
        if (v0 & 0x4) {
            {
                u8 v3 = ov16_0223F6E4(param0);

                if (v0 & 0x8) {
                    switch (ov16_0223F6F0(param0, v3)) {
                    case 0:
                    case 3:
                        v1 = BattleSystem_BattlerOfType(param0, 4);
                        v2 = BattleSystem_BattlerOfType(param0, 2);
                        break;
                    case 1:
                    case 2:
                        v1 = BattleSystem_BattlerOfType(param0, 2);
                        v2 = BattleSystem_BattlerOfType(param0, 4);
                        break;
                    }
                } else if (v0 & 0x2) {
                    v1 = BattleSystem_BattlerOfType(param0, 2);
                    v2 = BattleSystem_BattlerOfType(param0, 4);
                } else {
                    v1 = BattleSystem_BattlerOfType(param0, 0);
                    v2 = v1;
                }
            }
        } else if (v0 & 0x8) {
            v1 = BattleSystem_Partner(param0, param1->battler);
            v2 = param1->battler;
        } else if (v0 & 0x2) {
            v1 = BattleSystem_BattlerOfType(param0, 2);
            v2 = BattleSystem_BattlerOfType(param0, 4);
        } else {
            v1 = param1->battler;
            v2 = v1;
        }

        if (v0 & 0x4) {
            if (v0 & 0x8) {
                param3->id = 977;
                param3->tags = 49;
                param3->params[0] = v1;
                param3->params[1] = v1 | (param2->unk_04[v1] << 8);
                param3->params[2] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->id = 978;
                param3->tags = 9;
                param3->params[0] = v1 | (param2->unk_04[v1] << 8);
                param3->params[1] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->id = 979;
                param3->tags = 2;
                param3->params[0] = v1 | (param2->unk_04[v1] << 8);
            }
        } else {
            if (v0 & 0x8) {
                param3->id = 993;
                param3->tags = 57;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
                param3->params[3] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->id = 978;
                param3->tags = 9;
                param3->params[0] = v1 | (param2->unk_04[v1] << 8);
                param3->params[1] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->id = 979;
                param3->tags = 2;
                param3->params[0] = v1 | (param2->unk_04[v1] << 8);
            }
        }
    }
}

static void ov16_022641B4(BattleSystem *param0, BattlerData *param1, BattleMessage *param2)
{
    u32 v0;
    int v1;
    int v2;
    int v3;

    v0 = BattleSystem_BattleType(param0);
    v3 = BattleSystem_ResultMask(param0);

    if (v0 & 0x2) {
        v1 = BattleSystem_BattlerOfType(param0, 3);
        v2 = BattleSystem_BattlerOfType(param0, 5);
    } else {
        v1 = BattleSystem_BattlerOfType(param0, 1);
        v2 = v1;
    }

    switch (v3) {
    case 0x1:
        if (v0 & 0x8) {
            param2->id = 786;
            param2->tags = 26;
            param2->params[0] = v1;
            param2->params[1] = v2;
        } else {
            param2->id = 785;
            param2->tags = 8;
            param2->params[0] = v1;
        }
        break;
    case 0x2:
        if (v0 & 0x8) {
            param2->id = 788;
            param2->tags = 26;
            param2->params[0] = v1;
            param2->params[1] = v2;
        } else {
            param2->id = 787;
            param2->tags = 8;
            param2->params[0] = v1;
        }
        break;
    case 0x3:
        if (v0 & 0x8) {
            param2->id = 790;
            param2->tags = 26;
            param2->params[0] = v1;
            param2->params[1] = v2;
        } else {
            param2->id = 789;
            param2->tags = 8;
            param2->params[0] = v1;
        }
        break;
    }
}

static void ov16_02264270(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C9F0 *param2, BattleMessage *param3)
{
    int v0;
    int v1 = 0;
    int v2 = 0;

    for (v0 = 0; v0 < BattleSystem_MaxBattlers(param0); v0++) {
        if (param2->unk_01 & FlagIndex(v0)) {
            if (Battler_Side(param0, v0)) {
                v2++;
            } else {
                v1++;
            }
        }
    }

    if ((v1) && (v2)) {
        param3->id = 781;
        param3->tags = 0;
        BattleSystem_SetResultFlag(param0, 0x3 | 0x80 | 0x40);
    } else if (v1) {
        param3->id = 781;
        param3->tags = 0;
        BattleSystem_SetResultFlag(param0, 0x2 | 0x80 | 0x40);
    } else {
        if (BattleSystem_BattleType(param0) & 0x8) {
            param3->id = 792;
            param3->tags = 26;
            param3->params[0] = BattleSystem_BattlerOfType(param0, 3);
            param3->params[1] = BattleSystem_BattlerOfType(param0, 5);
        } else if (BattleSystem_BattleType(param0) & 0x2) {
            param3->id = 791;
            param3->tags = 8;
            param3->params[0] = BattleSystem_BattlerOfType(param0, 3);
        } else {
            param3->id = 791;
            param3->tags = 8;
            param3->params[0] = BattleSystem_BattlerOfType(param0, 1);
        }

        BattleSystem_SetResultFlag(param0, 0x1 | 0x80 | 0x40);
    }
}

static void ov16_02264360(BattleSystem *param0, BattlerData *param1, BattleMessage *param2)
{
    param2->id = 956;
    param2->tags = 8;

    if (BattleSystem_BattleType(param0) & 0x4) {
        if (ov16_0223F6F0(param0, ov16_0223F6E4(param0))) {
            param2->params[0] = BattleSystem_BattlerOfType(param0, 4);
        } else {
            param2->params[0] = BattleSystem_BattlerOfType(param0, 2);
        }
    } else {
        param2->params[0] = param1->battler;
    }

    BattleSystem_SetResultFlag(param0, 0x2 | 0x80 | 0x40);
}

static CellActorData *ov16_022643B8(BattleSystem *param0, int param1, int param2, int param3, s16 param4, s16 param5)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    PaletteData *v2;
    CellActorData *v3;
    int v4;

    v0 = ov16_0223E010(param0);
    v1 = ov16_0223E018(param0);
    v2 = BattleSystem_PaletteSys(param0);

    if (param1 & 0x1) {
        v4 = 2;
    } else {
        v4 = 0;
    }

    v3 = sub_02076994(v0, v1, v2, param4, param5, param2, v4, param3, 5);

    return v3;
}

static void ov16_02264408(BattleSystem *param0, BattlerData *param1, UnkStruct_ov12_0221FCDC *param2, UnkStruct_ov16_02265BBC *param3)
{
    UnkStruct_ov16_02264408 v0;
    int v1;
    int v2;

    if (param3->unk_4C == 0) {
        v0.unk_50 = 8;
        v2 = param3->unk_02;
    } else {
        v0.unk_50 = 63;
        v2 = param3->unk_50;
    }

    v0.unk_04 = BattleSystem_BGL(param0);
    v0.unk_08 = BattleSystem_PaletteSys(param0);
    v0.unk_00 = ov16_0223E010(param0);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = ov16_0223F2AC(param0, v1);
        v0.unk_34[v1] = param3->unk_18[v1];
        v0.unk_3C[v1] = param3->unk_20[v1];
        v0.unk_40[v1] = param3->unk_24[v1];
        v0.unk_44[v1] = param3->unk_28[v1];
        v0.unk_48[v1] = param3->unk_2C[v1];
        v0.unk_4C[v1] = param3->unk_3C[v1];
    }

    ov16_0223F87C(param0, &(v0.unk_1C[0]));
    ov16_0223F8AC(param0, &(v0.unk_20[0]));

    v0.unk_30 = BattleSystem_BattleType(param0);
    v0.unk_6C = BattleSystem_ChatotVoice(param0, param1->battler);
    v0.unk_70 = ov16_0223F1E8(param0);
    v0.unk_74 = ov16_0223F1F0(param0);
    v0.unk_54.unk_00 = 7;
    v0.unk_54.unk_04 = 3 + ov16_0223E240(param0);
    v0.unk_54.unk_08 = 172 + ov16_0223E240(param0) * 3 + ov16_0223EC04(param0);
    v0.unk_54.unk_0C = 2;
    v0.unk_54.unk_10 = 0;
    v0.unk_54.unk_14 = 8;

    ov12_0221FE30(param2, param3, v2, &v0);
}

static void ov16_02264530(BattleSystem *param0, UnkStruct_ov16_02265BBC *param1, UnkStruct_ov12_022380DC *param2, int param3)
{
    int v0;

    param2->unk_00 = param3;
    param2->unk_04 = param3;

    for (v0 = 0; v0 < 4; v0++) {
        param2->unk_08[v0] = ov16_0223F2AC(param0, v0);
        param2->unk_28[v0] = param1->unk_18[v0];
        param2->unk_30[v0] = param1->unk_20[v0];
        param2->unk_34[v0] = param1->unk_24[v0];
        param2->unk_38[v0] = param1->unk_28[v0];
        param2->unk_3C[v0] = param1->unk_2C[v0];
    }

    ov16_0223F87C(param0, &(param2->unk_4C[0]));
    ov16_0223F8AC(param0, &(param2->unk_18[0]));
}

static void ov16_022645B8(u8 *param0, u8 *param1, int param2, int param3, u16 param4)
{
    if (param2 == 0) {
        if ((MoveTable_LoadParam(param4, MOVEATTRIBUTE_FLAGS) & 0x40) == 0) {
            param0[0] = 1;
        } else {
            param0[0] = 0;
        }

        if (MoveTable_LoadParam(param4, MOVEATTRIBUTE_FLAGS) & 0x80) {
            param1[0] = 1;
        } else {
            param1[0] = 0;
        }
    } else {
        switch (param3) {
        case 18:
        case 19:
        case 20:
        case 22:
        case 21:
        case 31:
        case 32:
        case 34:
        case 35:
        case 37:
        case 39:
            param0[0] = 1;
            param1[0] = 0;
            break;
        case 36:
        case 38:
            param0[0] = 1;
            param1[0] = 1;
            break;
        default:
            param0[0] = 0;
            param1[0] = 0;
            break;
        }
    }
}

static BOOL ov16_02264650(UnkStruct_ov16_02264650_1 *param0, CellActorData *param1)
{
    UnkStruct_ov16_02264650 *v0;
    int v1;
    BOOL v2 = 0;

    v1 = sub_0200D81C(param0->unk_08);

    switch (v1) {
    case 1:
        if (param0->unk_12_0 == 0) {
            param0->unk_12_0 = 1;
            v0 = (UnkStruct_ov16_02264650 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02264650));
            v0->unk_00 = 0;
            v0->unk_04 = 0;

            SysTask_Start(ov16_022646C8, v0, 0);
        }

        break;
    case 4095:
        v2 = 1;
        break;
    default:
        if (((v1 & 0xf00) == 0x100) && (v1 & 0xff)) {
            sub_0200D3CC(param0->unk_08, 0);
            sub_0200D364(param0->unk_08, (v1 & 0xff) - 1);
            v2 = 1;
        }

        break;
    }

    return v2;
}

static void ov16_022646C8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02264650 *v0 = (UnkStruct_ov16_02264650 *)param1;

    switch (v0->unk_00) {
    case 0:
        sub_0200AAE0(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), 1);
        v0->unk_00++;
        break;
    case 1:
        if (sub_0200AC1C(1) == 1) {
            sub_0200AAE0(4, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), 1);
            v0->unk_00++;
        }
        break;
    case 2:
        if (sub_0200AC1C(1) == 1) {
            Heap_FreeToHeap(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_02264730(BattleSystem *param0)
{
    BattleSystem_SetStopRecording(param0, 1);
    Battle_RecordingStopped(param0, BattleSystem_Context(param0));
}

static void ov16_0226474C(BattleSystem *param0)
{
    BattleSystem_SetStopRecording(param0, 2);
    Battle_RecordingStopped(param0, BattleSystem_Context(param0));
}

static u8 ov16_02264768(BattleSystem *param0, u8 param1, u8 param2)
{
    if (BattleSystem_BattleType(param0) & 0x4) {
        if ((TrainerInfo_GameCode(BattleSystem_TrainerInfo(param0, param1)) == 0) && (param2 <= 1)) {
            param2 += 103;
        }
    }

    return param2;
}
