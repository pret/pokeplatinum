#include "battle/battle_display.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/species.h"
#include "generated/items.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_io.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/trainer.h"

#include "battle/battle_anim_battler_context.h"
#include "battle/battle_context.h"
#include "battle/battle_io.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/healthbar.h"
#include "battle/move_display_info.h"
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
#include "battle/struct_ov16_0226C378.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "battle/trainer_ai.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/const_ov12_0223B0A0.h"
#include "battle_anim/const_ov12_0223B0B8.h"
#include "battle_anim/const_ov12_0223B0DC.h"
#include "battle_anim/ov12_02235E94.h"
#include "battle_anim/ov12_02237EFC.h"
#include "battle_anim/ov12_022380BC.h"
#include "battle_anim/struct_ov12_02236030.h"
#include "battle_anim/struct_ov12_02237728.h"
#include "battle_anim/struct_ov12_02237F38.h"
#include "battle_anim/struct_ov12_022380DC.h"
#include "overlay013/battle_bag.h"
#include "overlay013/battle_bag_utils.h"
#include "overlay013/battle_party.h"

#include "assert.h"
#include "bg_window.h"
#include "brightness_controller.h"
#include "character_sprite.h"
#include "enums.h"
#include "flags.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0201567C.h"
#include "unk_02015F84.h"

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
static PokemonSprite *ov16_02263B30(BattleSystem *battleSys, PokemonSpriteManager *param1, PokemonSpriteTemplate *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, SpriteAnimFrame *param11, PokemonSpriteCallback *param12);
static void ov16_02263C1C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C3F8 *param2, BattleMessage *param3);
static void ov16_02263CF0(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C40C *param2, BattleMessage *param3);
static void ov16_02263DD0(BattleSystem *battleSys, BattlerData *param1, BattleMessage *param2);
static void ov16_02263E7C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C430 *param2, BattleMessage *param3);
static void ov16_022641B4(BattleSystem *battleSys, BattlerData *param1, BattleMessage *param2);
static void ov16_02264270(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C9F0 *param2, BattleMessage *param3);
static void ov16_02264360(BattleSystem *battleSys, BattlerData *param1, BattleMessage *param2);
static ManagedSprite *ov16_022643B8(BattleSystem *battleSys, int param1, int param2, int param3, s16 param4, s16 param5);
static void ov16_02264408(BattleSystem *battleSys, BattlerData *param1, BattleAnimSystem *param2, UnkStruct_ov16_02265BBC *param3);
static void ov16_02264530(BattleSystem *battleSys, UnkStruct_ov16_02265BBC *param1, UnkStruct_ov12_022380DC *param2, int param3);
static void ov16_022645B8(u8 *param0, u8 *param1, int param2, int param3, u16 param4);
static BOOL ov16_02264650(UnkStruct_ov16_02264650_1 *param0, ManagedSprite *param1);
static void ov16_022646C8(SysTask *param0, void *param1);
static void ov16_02264730(BattleSystem *battleSys);
static void ov16_0226474C(BattleSystem *battleSys);
static u8 ov16_02264768(BattleSystem *battleSys, u8 param1, u8 param2);

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

void ov16_0225CBB8(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225CBB8 *v0 = (UnkStruct_ov16_0225CBB8 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225CBB8));
    v0->unk_00 = battleSys;
    v0->unk_14 = 0;
    v0->unk_15 = 0;
    v0->unk_16 = 0;

    SysTask_Start(ov16_02263014, v0, 0);
}

void ov16_0225CBDC(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C168 *param2)
{
    int v0;
    PokemonSpriteTemplate v1;
    PokemonSpriteManager *v2;
    SpriteAnimFrame v3[10];
    UnkStruct_ov16_0225E4E8 *v4;
    int battleType;
    u8 v6;
    s8 v7;
    s8 v8;
    u8 v9;

    v2 = ov16_0223E000(battleSys);
    battleType = BattleSystem_BattleType(battleSys);
    v4 = (UnkStruct_ov16_0225E4E8 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225E4E8));

    v4->unk_12 = 0;

    if (param1->battlerType & 0x1) {
        v4->unk_13 = 2;
        v4->unk_0C = ov16_0223E020(battleSys, 1);
        ManagedSprite_SetPositionXY(v4->unk_0C->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], 8 * 11);
    } else {
        v4->unk_13 = 0;
        v4->unk_0C = ov16_0223E020(battleSys, 0);
        ManagedSprite_SetPositionXY(v4->unk_0C->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], 128 + 8);
    }

    if (param2->unk_01_2) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    BuildPokemonSpriteTemplate(&v1, param2->unk_02, param2->unk_01_0, v4->unk_13, v0, param2->unk_01_3, param2->unk_04);

    v6 = LoadPokemonSpriteYOffset(param2->unk_02, param2->unk_01_0, v4->unk_13, param2->unk_01_3, param2->unk_04);

    PokemonSprite_LoadYOffset(param1->unk_1A0, &v7, param2->unk_02);
    PokemonSprite_LoadXOffsetShadow(param1->unk_1A0, &v8, param2->unk_02);
    PokemonSprite_LoadShadowSize(param1->unk_1A0, &v9, param2->unk_02);
    PokemonSprite_LoadAnimFrames(param1->unk_1A0, &v3[0], param2->unk_02, param1->battlerType);

    v4->unk_08 = param1->unk_20 = ov16_02263B30(battleSys, v2, &v1, Unk_ov12_0223B0B8[param1->battlerType][0], Unk_ov12_0223B0B8[param1->battlerType][1], Unk_ov12_0223B0B8[param1->battlerType][2], v6, v7, v8, v9, param1->battler, &v3[0], NULL);

    if (v4->unk_13 == 2) {
        PokemonSprite_StartFade(v4->unk_08, 8, 8, 0, 0x0);
    }

    if ((v4->unk_13 == 2) && (BattleSystem_BattleStatus(battleSys) & 0x40)) {
        int v10, v11;

        v11 = PokemonSprite_GetAttribute(v4->unk_08, MON_SPRITE_Y_CENTER);
        v10 = ((24 * 8) - -80) / 2;

        PokemonSprite_SetAttribute(v4->unk_08, MON_SPRITE_SHADOW_SIZE, 0);
        PokemonSprite_SetAttribute(v4->unk_08, MON_SPRITE_X_CENTER, 256 - 64);
        PokemonSprite_SetAttribute(v4->unk_08, MON_SPRITE_Y_CENTER, v11 - v10);

        v4->unk_14 = v11;
    } else {
        v4->unk_14 = Unk_ov12_0223B0A0[param1->battlerType][0];
    }

    v4->unk_00 = battleSys;
    v4->unk_04 = param1;
    v4->unk_10 = param2->unk_00;
    v4->unk_11 = param1->battler;
    v4->unk_16 = param2->unk_02;
    v4->unk_2C = param2->unk_01_3;
    v4->unk_18 = param2->unk_08;
    v4->unk_1C = param1->battlerType;
    v4->unk_24 = Pokemon_GetNatureOf(param2->unk_04);
    v4->unk_28 = param2->unk_01_2;

    if ((v4->unk_13 == 2) && (BattleSystem_BattleStatus(battleSys) & 0x40)) {
        SysTask_Start(ov16_0225E894, v4, 0);
    } else {
        SysTask_Start(ov16_0225E4E8, v4, 0);
    }

    Sound_Set2PokemonCriesAllowed(1);
}

void ov16_0225CE1C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C17C *param2)
{
    int v0;
    UnkStruct_ov16_0225EA80 *v1;
    int battleType = BattleSystem_BattleType(battleSys);
    v1 = (UnkStruct_ov16_0225EA80 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225EA80));

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

    BuildPokemonSpriteTemplate(&v1->unk_14, param2->unk_02, param2->unk_01_0, v1->unk_84, v0, param2->unk_01_3, param2->unk_04);

    v1->unk_85 = LoadPokemonSpriteYOffset(param2->unk_02, param2->unk_01_0, v1->unk_84, param2->unk_01_3, param2->unk_04);

    PokemonSprite_LoadYOffset(param1->unk_1A0, &v1->unk_90, param2->unk_02);
    PokemonSprite_LoadXOffsetShadow(param1->unk_1A0, &v1->unk_91, param2->unk_02);
    PokemonSprite_LoadShadowSize(param1->unk_1A0, &v1->unk_93, param2->unk_02);
    ov16_02263B10(param1);

    v1->unk_00 = battleSys;
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

    Sound_Set2PokemonCriesAllowed(1);
    SysTask_Start(ov16_0225EA80, v1, 0);
}

void ov16_0225CF70(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C17C *param2)
{
    int i;
    int v1;
    UnkStruct_ov16_0225EA80 *v2;
    int battleType = BattleSystem_BattleType(battleSys);
    v2 = (UnkStruct_ov16_0225EA80 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225EA80));
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

    BuildPokemonSpriteTemplate(&v2->unk_14, param2->unk_02, param2->unk_01_0, v2->unk_84, v1, param2->unk_01_3, param2->unk_04);

    v2->unk_85 = LoadPokemonSpriteYOffset(param2->unk_02, param2->unk_01_0, v2->unk_84, param2->unk_01_3, param2->unk_04);

    PokemonSprite_LoadYOffset(param1->unk_1A0, &v2->unk_90, param2->unk_02);
    PokemonSprite_LoadXOffsetShadow(param1->unk_1A0, &v2->unk_91, param2->unk_02);
    PokemonSprite_LoadShadowSize(param1->unk_1A0, &v2->unk_93, param2->unk_02);
    ov16_02263B10(param1);

    v2->unk_00 = battleSys;
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

    for (i = 0; i < 4; i++) {
        v2->unk_28.unk_18[i] = param2->unk_50[i];
        v2->unk_28.unk_20[i] = param2->unk_58[i];
        v2->unk_28.unk_24[i] = param2->unk_5C[i];
        v2->unk_28.unk_28[i] = param2->unk_60[i];
        v2->unk_28.unk_2C[i] = param2->unk_64[i];
    }

    SysTask_Start(ov16_0225F0C0, v2, 0);
}

void ov16_0225D118(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_02264EF8 *param2)
{
    int i;
    UnkStruct_ov16_0225F764 *v1 = (UnkStruct_ov16_0225F764 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225F764));
    v1->unk_00 = battleSys;
    v1->unk_04 = param1;
    v1->unk_08 = param1->unk_20;
    v1->unk_68 = param2->unk_00;
    v1->unk_69 = param1->battler;
    v1->unk_6A = param1->battlerType;
    v1->unk_6B = 0;
    v1->unk_6C = param2->unk_01;
    v1->unk_6E = param2->unk_02;
    v1->unk_70 = param2->unk_04;

    for (i = 0; i < 4; i++) {
        v1->unk_10.unk_18[i] = param2->unk_08[i];
        v1->unk_10.unk_20[i] = param2->unk_10[i];
        v1->unk_10.unk_24[i] = param2->unk_14[i];
        v1->unk_10.unk_28[i] = param2->unk_18[i];
        v1->unk_10.unk_2C[i] = param2->unk_1C[i];
    }

    SysTask_Start(ov16_0225F764, v1, 0);
}

void ov16_0225D1C4(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_02265050 *param2)
{
    UnkStruct_ov16_0225D1C4 *v0 = (UnkStruct_ov16_0225D1C4 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D1C4));

    v0->unk_00 = battleSys;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->battler;
    v0->unk_0A = param1->battlerType;
    v0->unk_0B = 0;
    v0->unk_0C = param2->unk_01;

    PokemonSprite_StartFade(v0->unk_04, 0, 16, 0, Unk_ov16_0226F1AE[param2->unk_02]);
    PokemonSprite_SetAttribute(v0->unk_04, MON_SPRITE_SHADOW_IS_AFFINE, 1);
    SysTask_Start(ov16_0225FA00, v0, 0);
}

void ov16_0225D228(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_02265124 *param2)
{
    int v0;
    UnkStruct_ov16_02264650_1 *v1;
    int v2;

    v1 = (UnkStruct_ov16_02264650_1 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_02264650_1));
    v1->unk_0E = 0;

    if (param1->battlerType & 0x1) {
        v1->unk_0F = 2;
        v1->unk_04 = ov16_0223E020(battleSys, 1);
        ManagedSprite_SetPositionXY(v1->unk_04->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], 8 * 11);
    } else {
        v1->unk_0F = 0;
        v1->unk_04 = ov16_0223E020(battleSys, 0);
        ManagedSprite_SetPositionXY(v1->unk_04->unk_00, Unk_ov12_0223B0B8[param1->battlerType & 1][0], 128 + 8);
    }

    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) || ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) && (param1->battlerType & BATTLE_TYPE_TRAINER))) {
        v2 = param1->battlerType;
    } else {
        v2 = param1->battlerType & 1;
    }

    param2->unk_02 = ov16_02264768(battleSys, param1->battler, param2->unk_02);

    v1->unk_08 = param1->unk_18 = ov16_022643B8(battleSys, v2, param2->unk_02, param1->battlerType, Unk_ov12_0223B0B8[v2][0], Unk_ov12_0223B0B8[v2][1]);
    v1->unk_10 = Unk_ov12_0223B0A0[v2][0];
    v1->unk_00 = battleSys;
    v1->unk_0C = param2->unk_00;
    v1->unk_0D = param1->battler;
    v1->unk_14 = param1->battlerType;
    v1->unk_1C = 0;

    if ((v1->unk_14 == 0) || (v1->unk_14 == 2)) {
        Bg_SetOffset(BattleSystem_BGL(battleSys), 3, 2, 4 * 33);
    }

    SysTask_Start(ov16_0225FA70, v1, 0);
}

void ov16_0225D360(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_02265154 *param2)
{
    UnkStruct_ov16_0225D360 *v0 = (UnkStruct_ov16_0225D360 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D360));

    v0->unk_0A = 0;
    v0->unk_00 = battleSys;
    v0->unk_08 = param2->unk_00;
    v0->unk_10 = param2->unk_01;
    v0->unk_09 = param1->battler;
    v0->unk_04 = param1;

    if (param1->battlerType & 0x1) {
        v0->unk_0B = 2;
        v0->unk_0C = 0;
    } else {
        {
            Trainer *trainer = BattleSystem_GetTrainer(battleSys, param1->battler);
            v0->unk_0B = 0;
            v0->unk_0C = sub_020788D0(ov16_02264768(battleSys, param1->battler, trainer->header.trainerType));
        }
    }

    SysTask_Start(ov16_0225FD5C, v0, 0);
}

void ov16_0225D3CC(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225D3CC *v0 = (UnkStruct_ov16_0225D3CC *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D3CC));

    v0->unk_0A = 0;
    v0->unk_00 = battleSys;
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

void ov16_0225D414(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_022651A8 *param2)
{
    int v0;
    PokemonSpriteTemplate v1;
    PokemonSpriteManager *v2;
    UnkStruct_ov16_02260384 *v3;
    u32 v4;

    v2 = ov16_0223E000(battleSys);
    v3 = (UnkStruct_ov16_02260384 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_02260384));
    v3->unk_0A = 0;

    if (param1->battlerType & 0x1) {
        v3->unk_0B = 2;
    } else {
        v3->unk_0B = 0;
    }

    v3->unk_04 = param1->unk_18 = ov16_022643B8(battleSys, param1->battlerType & 1, param2->unk_02, param1->battlerType, Unk_ov12_0223B0DC[param1->battlerType & 1][0], Unk_ov12_0223B0DC[param1->battlerType & 1][1]);
    v3->unk_0C = Unk_ov12_0223B0A0[param1->battlerType & 1][param2->unk_04];
    v3->unk_00 = battleSys;
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

void ov16_0225D5B8(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C260 *param2)
{
    UnkStruct_ov16_0225D5B8 *v0;
    int i, j;

    v0 = (UnkStruct_ov16_0225D5B8 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D5B8));
    MI_CpuClearFast(v0, sizeof(UnkStruct_ov16_0225D5B8));

    v0->unk_0A = 0;
    v0->unk_0B = 0;
    v0->unk_00 = battleSys;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->battler;
    v0->unk_34 = param1->battlerType;
    v0->unk_04 = &param1->healthbar;
    v0->unk_23 = param2->unk_01;
    v0->unk_36 = param2->unk_24;
    v0->unk_38 = param2->unk_26;
    v0->unk_3A = param2->unk_28;
    v0->unk_3B = param2->unk_29;

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 6; j++) {
            v0->unk_10[i][j] = param2->unk_08[i][j];
        }
    }

    for (i = 0; i < 6; i++) {
        if (param2->unk_08[0][i] == 2) {
            v0->unk_1C[i] = 0;
        } else {
            v0->unk_1C[i] = param2->unk_02[i];
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

void ov16_0225D698(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_022656F0 *param2)
{
    UnkStruct_ov16_0225D698 *v0;
    int i;

    v0 = (UnkStruct_ov16_0225D698 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D698));

    v0->unk_20 = 0;
    v0->unk_00 = battleSys;
    v0->unk_1C = param1->data[0];
    v0->unk_1D = param1->battler;
    v0->unk_1E = param1->battlerType;
    v0->unk_04 = &param1->healthbar;
    v0->unk_1F = param2->unk_01;

    for (i = 0; i < 4; i++) {
        v0->unk_0C[i] = param2->unk_04[i];
        v0->unk_14[i] = param2->unk_0C[i];
        v0->unk_18[i] = param2->unk_10[i];
    }

    v0->unk_22 = param2->unk_02;

    SysTask_Start(param1->unk_00.unk_04, v0, 0);
}

void ov16_0225D708(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C29C *param2)
{
    UnkStruct_ov16_0225D708 *v0;
    int i, v2;
    u32 battleType;
    u8 v4[6];

    v0 = (UnkStruct_ov16_0225D708 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D708));

    v0->unk_0F = 0;
    v0->unk_00 = battleSys;
    v0->unk_0C = param1->data[0];
    v0->unk_0D = param1->battler;
    v0->unk_0E = param1->battlerType;
    v0->unk_30 = param2->unk_02;
    v0->unk_04 = &param1->healthbar;
    v0->unk_32 = param2->unk_01;

    ov16_0223F87C(battleSys, &v4[0]);

    v2 = BattleSystem_MaxBattlers(battleSys);
    battleType = BattleSystem_BattleType(battleSys);

    for (i = 0; i < v2; i++) {
        v0->unk_10[i] = param2->unk_04[i];
    }

    SysTask_Start(param1->unk_00.unk_08, v0, 0);
}

void ov16_0225D794(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C2B0 *param2)
{
    UnkStruct_ov16_0225D794 *v0;
    int i, j;

    v0 = (UnkStruct_ov16_0225D794 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D794));

    v0->unk_08 = (UnkStruct_ov16_0225D840 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D840));
    v0->unk_08->unk_04 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlePartyContext));
    v0->unk_08->unk_04->party = Party_New(HEAP_ID_BATTLE);
    v0->unk_0E = 0;
    v0->unk_00 = battleSys;
    v0->unk_0C = param2->unk_00;
    v0->unk_0D = param1->battler;
    v0->unk_0F = param1->battlerType;
    v0->unk_14 = param2->unk_01;
    v0->unk_15 = param2->unk_02;
    v0->unk_16 = param2->unk_03;

    for (i = 0; i < 4; i++) {
        v0->unk_08->unk_0C[i] = param2->unk_04[i];

        for (j = 0; j < 6; j++) {
            v0->unk_18[i][j] = param2->unk_08[i][j];
        }

        v0->unk_30[i] = param2->unk_20[i];
    }

    SysTask_Start(param1->unk_00.unk_0C, v0, 0);
}

void ov16_0225D840(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C2C4 *param2)
{
    UnkStruct_ov16_0225D840 *v0;
    int i, j;

    v0 = (UnkStruct_ov16_0225D840 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D840));

    v0->unk_0A = 0;
    v0->unk_00 = battleSys;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param2->unk_01;
    v0->unk_0B = param2->unk_02;
    v0->unk_10 = param2->unk_20;
    v0->unk_16 = param2->unk_03;
    v0->unk_14 = 0;
    v0->unk_18 = param2->unk_24;

    for (i = 0; i < 4; i++) {
        v0->unk_0C[i] = param2->unk_04[i];

        for (j = 0; j < 6; j++) {
            v0->unk_1C[i][j] = param2->unk_08[i][j];
        }
    }

    SysTask_Start(param1->unk_00.unk_10, v0, 0);
}

void ov16_0225D8AC(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C2D8 *param2)
{
    UnkStruct_ov16_0225D8AC *v0 = (UnkStruct_ov16_0225D8AC *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D8AC));

    v0->unk_0E = 0;
    v0->unk_00 = battleSys;
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

void ov16_0225D8F0(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C2EC *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    v1 = ov16_0223E060(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;

    v2.id = 0 + param2->unk_02 * 3;
    v2.tags = 2;
    v2.params[0] = param1->battler | (param2->unk_01 << 8);

    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void BattleDisplay_PrintMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    MessageLoader *msgLoader = BattleSystem_MessageLoader(battleSys);
    BattleMessageWaitTask *taskData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    taskData->battleSys = battleSys;
    taskData->command = battlerData->data[0];
    taskData->battler = battlerData->battler;
    taskData->msgIdx = BattleMessage_Print(battleSys, msgLoader, battleMsg, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, taskData, 0);
}

void ov16_0225D9A8(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_02265BBC *param2)
{
    UnkStruct_ov16_0225D9A8 *v0 = (UnkStruct_ov16_0225D9A8 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225D9A8));

    v0->unk_6A = 0;
    v0->unk_00 = battleSys;
    v0->unk_04 = param1;
    v0->unk_68 = param1->data[0];
    v0->unk_69 = param1->battler;
    v0->unk_0C = ov16_0223E008(battleSys);
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

void ov16_0225DA44(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225DA44 *v0 = (UnkStruct_ov16_0225DA44 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225DA44));

    v0->unk_09 = 0;
    v0->unk_00 = battleSys;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param1->battler;
    v0->unk_0A = 0;

    SysTask_Start(ov16_0226292C, v0, 0);
}

void ov16_0225DA74(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C35C *param2)
{
    Healthbar *v0;

    GF_ASSERT(param1->healthbar.mainSprite != NULL);

    v0 = &param1->healthbar;
    MI_CpuClear8(&v0->state, sizeof(u8));

    v0->battleSys = battleSys;
    v0->unk_4C = param2->unk_00;
    v0->battler = param1->battler;
    v0->type = Healthbar_Type(param1->battlerType, BattleSystem_BattleType(battleSys));
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

void ov16_0225DB00(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C370 *param2)
{
    Healthbar *v0;

    GF_ASSERT(param1->healthbar.mainSprite != NULL);

    v0 = &param1->healthbar;

    MI_CpuClear8(&v0->state, sizeof(u8));

    v0->battleSys = battleSys;
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

void ov16_0225DB74(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C384 *param2)
{
    UnkStruct_ov16_0225DB74 *v0;
    int i;

    v0 = (UnkStruct_ov16_0225DB74 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225DB74));

    if (param1->battlerType & 0x1) {
        v0->unk_67 = 2;
    } else {
        v0->unk_67 = 0;
    }

    v0->unk_66 = 0;
    v0->unk_00 = battleSys;
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

    for (i = 0; i < 4; i++) {
        v0->unk_0C.unk_18[i] = param2->unk_0C[i];
        v0->unk_0C.unk_20[i] = param2->unk_14[i];
        v0->unk_0C.unk_24[i] = param2->unk_18[i];
        v0->unk_0C.unk_28[i] = param2->unk_1C[i];
        v0->unk_0C.unk_2C[i] = param2->unk_20[i];
    }

    SysTask_Start(ov16_02262A9C, v0, 0);
}

void ov16_0225DC4C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C398 *param2)
{
    int v0;

    if (param1->battlerType & 0x1) {
        v0 = 117;
    } else {
        v0 = -117;
    }

    ClearCommand(battleSys, param1->battler, param2->unk_00);
    Sound_PlayPannedEffect(param2->unk_04, v0);
}

void ov16_0225DC7C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225DC7C *v0 = (UnkStruct_ov16_0225DC7C *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225DC7C));

    v0->unk_06 = 0;
    v0->unk_00 = battleSys;
    v0->unk_04 = param1->data[0];
    v0->unk_05 = param1->battler;

    SysTask_Start(ov16_02262D28, v0, 0);
}

void ov16_0225DCB0(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C3BC *param2)
{
    UnkStruct_ov16_0225DCB0 *v0;
    int i;

    v0 = (UnkStruct_ov16_0225DCB0 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225DCB0));

    v0->unk_00 = battleSys;
    v0->unk_04 = param1;
    v0->unk_60 = param2->unk_00;
    v0->unk_61 = param1->battler;
    v0->unk_62 = 0;
    v0->unk_63 = param2->unk_01;
    v0->unk_64 = param2->unk_02;

    for (i = 0; i < 4; i++) {
        v0->unk_08.unk_18[i] = param2->unk_04[i];
        v0->unk_08.unk_20[i] = param2->unk_0C[i];
        v0->unk_08.unk_24[i] = param2->unk_10[i];
        v0->unk_08.unk_28[i] = param2->unk_14[i];
        v0->unk_08.unk_2C[i] = param2->unk_18[i];
    }

    SysTask_Start(ov16_02262DC4, v0, 0);
}

void ov16_0225DD44(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C3D0 *param2)
{
    GF_ASSERT(param1->healthbar.mainSprite != NULL);

    param1->healthbar.status = param2->unk_01;

    Healthbar_DrawInfo(&param1->healthbar, param1->healthbar.curHP, HEALTHBAR_INFO_STATUS);
    ClearCommand(battleSys, param1->battler, param2->unk_00);
}

void ov16_0225DD7C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C3E4 *param2)
{
    BattleMessageWaitTask *v0;
    int v1 = Battler_TrainerID(battleSys, param1->battler);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = ov16_0223F9FC(battleSys, v1, param1->battler, param2->unk_01, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DDD8(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C3F8 *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263C1C(battleSys, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DE30(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C40C *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263CF0(battleSys, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DE88(BattleSystem *battleSys, BattlerData *param1)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263DD0(battleSys, param1, &v2);

    v1 = BattleSystem_MessageLoader(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = 34;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DEDC(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C430 *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02263E7C(battleSys, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = param2->unk_00;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225DF34(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225DF34 *v0 = (UnkStruct_ov16_0225DF34 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225DF34));

    v0->unk_00 = battleSys;
    v0->unk_08 = param1->data[0];
    v0->unk_09 = param1->battler;
    v0->unk_0A = 0;
    v0->unk_04 = &param1->healthbar;

    SysTask_Start(ov16_02262F30, v0, 0);
}

void ov16_0225DF6C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C454 *param2)
{
    UnkStruct_ov16_0225DF6C *v0;
    MessageLoader *v1;

    if (param1->bootState == 0x0) {
        v1 = BattleSystem_MessageLoader(battleSys);
        v0 = (UnkStruct_ov16_0225DF6C *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225DF6C));

        v0->unk_00 = battleSys;
        v0->unk_04 = param2->unk_00;
        v0->unk_05 = param1->battler;
        v0->unk_07 = 0;
        v0->unk_06 = BattleMessage_Print(battleSys, v1, &param2->unk_04, BattleSystem_TextSpeed(battleSys));

        SysTask_Start(ov16_02262FC0, v0, 0);
    } else if (param1->bootState == 0x1) {
        ov16_022661B0(battleSys, param1->battler);
        ClearCommand(battleSys, param1->battler, param2->unk_00);
    } else {
        if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == 0) {
            ov16_022661B0(battleSys, param1->battler);
        }

        ClearCommand(battleSys, param1->battler, param2->unk_00);
    }
}

void ov16_0225E008(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C468 *param2)
{
    Healthbar *v0 = &param1->healthbar;

    MI_CpuClearFast(&v0->state, sizeof(u8));

    v0->battleSys = battleSys;
    v0->battler = param1->battler;
    v0->type = Healthbar_Type(param1->battlerType, BattleSystem_BattleType(battleSys));
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

void ov16_0225E0BC(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C65C *param2)
{
    UnkStruct_ov16_0225E0BC *v0 = (UnkStruct_ov16_0225E0BC *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225E0BC));

    v0->unk_0A = 0;
    v0->unk_00 = battleSys;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->battler;
    v0->unk_0C = param2->unk_02;
    v0->unk_0E = param2->unk_01;

    SysTask_Start(ov16_022633A4, v0, 0);
}

void ov16_0225E0F4(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_022664F8 *param2)
{
    UnkStruct_ov16_0225E0F4 *v0 = (UnkStruct_ov16_0225E0F4 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225E0F4));

    v0->unk_0A = 0;
    v0->unk_00 = battleSys;
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
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

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
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

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
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

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
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;
    task->midBattle = TRUE;

    SysTask_Start(HidePartyGaugeTask, task, 0);
}

void ov16_0225E23C(BattleSystem *battleSys, BattlerData *param1)
{
    MessageLoader *v0;
    BattleMessage v1;

    if (param1->bootState == 0x0) {
        v0 = BattleSystem_MessageLoader(battleSys);

        v1.id = 923;
        v1.tags = 0;

        BattleMessage_Print(battleSys, v0, &v1, NULL);
        Battle_SetWaitDial(battleSys, Window_AddWaitDial(BattleSystem_Window(battleSys, 0), 1));
    }

    ClearCommand(battleSys, param1->battler, 55);
}

void ov16_0225E294(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_02265BBC *param2)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(battleSys, param2, &v0, param1->battler);
    ov12_022382BC(&v0, HEAP_ID_BATTLE);
    ClearCommand(battleSys, param1->battler, param2->unk_00);
}

void ov16_0225E2C8(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225E2C8 *v0 = (UnkStruct_ov16_0225E2C8 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225E2C8));

    v0->unk_0E = 0;
    v0->unk_00 = battleSys;
    v0->unk_04 = param1;
    v0->unk_0C = param1->data[0];
    v0->unk_0D = param1->battler;
    v0->unk_08 = param1->unk_20;

    SysTask_Start(ov16_02263688, v0, 0);
}

void ov16_0225E300(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225E300 *v0 = (UnkStruct_ov16_0225E300 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225E300));

    v0->unk_0E = 0;
    v0->unk_00 = battleSys;
    v0->unk_04 = param1;
    v0->unk_0C = param1->data[0];
    v0->unk_0D = param1->battler;
    v0->unk_08 = param1->unk_20;

    SysTask_Start(ov16_022636D4, v0, 0);
}

void ov16_0225E338(BattleSystem *battleSys, BattlerData *param1)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_022641B4(battleSys, param1, &v2);

    v1 = BattleSystem_MessageLoader(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = 59;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225E38C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C9F0 *param2)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02264270(battleSys, param1, param2, &v2);

    v1 = BattleSystem_MessageLoader(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = 60;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225E3E0(BattleSystem *battleSys, BattlerData *param1)
{
    BattleMessageWaitTask *v0;
    MessageLoader *v1;
    BattleMessage v2;

    ov16_02264360(battleSys, param1, &v2);

    v1 = BattleSystem_MessageLoader(battleSys);
    v0 = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    v0->battleSys = battleSys;
    v0->command = 61;
    v0->battler = param1->battler;
    v0->msgIdx = BattleMessage_Print(battleSys, v1, &v2, BattleSystem_TextSpeed(battleSys));

    SysTask_Start(WaitForBattleMessagePrint, v0, 0);
}

void ov16_0225E434(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_02265BBC *param2)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(battleSys, param2, &v0, param1->battler);
    ov12_02238390(&v0, HEAP_ID_BATTLE);
    ClearCommand(battleSys, param1->battler, param2->unk_00);
}

void ov16_0225E468(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225CA4C *param2)
{
    int v0;

    if (param1->battlerType & 0x1) {
        v0 = 117;
    } else {
        v0 = -117;
    }

    switch (param2->unk_01) {
    case 0:
        Sound_PlayPannedEffect(SEQ_SE_DP_KOUKA_M, v0);
        break;
    case 2:
        Sound_PlayPannedEffect(SEQ_SE_DP_KOUKA_H, v0);
        break;
    case 1:
        Sound_PlayPannedEffect(SEQ_SE_DP_KOUKA_L, v0);
        break;
    }

    ClearCommand(battleSys, param1->battler, param2->unk_00);
}

void ov16_0225E4C8(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225CA60 *param2)
{
    Sound_PlayBGM(param2->unk_02);
    ClearCommand(battleSys, param1->battler, param2->unk_00);
}

static void ov16_0225E4E8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E4E8 *v0 = (UnkStruct_ov16_0225E4E8 *)param1;
    BattleAnimSystem *v1 = ov16_0223E008(v0->unk_00);
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
            ManagedSprite_GetPositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
                if (v2 < (24 * 8)) {
                    ManagedSprite_OffsetPositionXY(v0->unk_0C->unk_00, 8, 0);
                } else {
                    ManagedSprite_SetPositionXY(v0->unk_0C->unk_00, 24 * 8, 8 * 11);
                }
            }

            ManagedSprite_GetPositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if (v0->unk_1C == 1) {
                PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v2);
            } else if (v0->unk_1C == 3) {
                v2 = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER) - v2;
                v2 -= 24;

                PokemonSprite_AddAttribute(v0->unk_08, MON_SPRITE_X_CENTER, -v2);
            } else if (v0->unk_1C == 5) {
                v2 = v2 - PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER);
                v2 -= 16;

                PokemonSprite_AddAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v2);
            }

            if (PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER) >= v0->unk_14) {
                PokemonSprite_InitAnim(v0->unk_08, 1);
                PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
                PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_SHADOW_IS_AFFINE, 0);
                PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v0->unk_14);
                PokemonSprite_LoadAnim(v0->unk_04->unk_1A0, BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

                {
                    u8 v4;
                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v4, v0->unk_16, v0->unk_1C);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, 117, 127, NULL, 5, v4);
                }

                if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
                    ManagedSprite_SetPositionXY(v0->unk_0C->unk_00, 24 * 8, 8 * 11);
                }

                PokemonSprite_StartFade(v0->unk_08, 8, 0, 0, 0x0);
                v0->unk_12++;
            }
        } else {
            ManagedSprite_GetPositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if ((v0->unk_1C == 0) || (v0->unk_1C == 2)) {
                if (v2 > 64) {
                    ManagedSprite_OffsetPositionXY(v0->unk_0C->unk_00, -8, 0);
                } else {
                    ManagedSprite_SetPositionXY(v0->unk_0C->unk_00, 64, 128 + 8);
                }
            }

            ManagedSprite_GetPositionXY(v0->unk_0C->unk_00, &v2, &v3);

            if (v0->unk_1C == 0) {
                PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v2);
            } else if (v0->unk_1C == 2) {
                v2 = v2 - PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER);
                v2 -= 24;
                PokemonSprite_AddAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v2);
            } else if (v0->unk_1C == 4) {
                v2 = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER) - v2;
                v2 -= 16;
                PokemonSprite_AddAttribute(v0->unk_08, MON_SPRITE_X_CENTER, -v2);
            }

            if (PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER) <= v0->unk_14) {
                PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v0->unk_14);
                PokemonSprite_LoadAnim(v0->unk_04->unk_1A0, BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

                {
                    u8 v5;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v5, v0->unk_16, v0->unk_1C);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, -117, 127, NULL, 5, v5);
                }

                if ((v0->unk_1C == 0) || (v0->unk_1C == 2)) {
                    ManagedSprite_SetPositionXY(v0->unk_0C->unk_00, 64, 128 + 8);
                }

                v0->unk_12++;
            }
        }
        break;
    case 3:
        if ((sub_020160F4(BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_11) == 1) && (PokemonSprite_IsAnimActive(v0->unk_08) == 0)) {
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
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            v0->unk_12 = 0xff;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(0);
        ClearCommand(v0->unk_00, v0->unk_11, v0->unk_10);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225E894(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E4E8 *v0 = (UnkStruct_ov16_0225E4E8 *)param1;
    BattleAnimSystem *v1 = ov16_0223E008(v0->unk_00);
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
        ManagedSprite_GetPositionXY(v0->unk_0C->unk_00, &v2, &v3);

        if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
            if (v2 < (24 * 8)) {
                ManagedSprite_OffsetPositionXY(v0->unk_0C->unk_00, 8, 0);
            } else {
                ManagedSprite_SetPositionXY(v0->unk_0C->unk_00, 24 * 8, 8 * 11);
            }
        }

        ManagedSprite_GetPositionXY(v0->unk_0C->unk_00, &v2, &v3);
        PokemonSprite_AddAttribute(v0->unk_08, MON_SPRITE_Y_CENTER, 8 / 2);

        if (PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER) >= v0->unk_14) {
            PokemonSprite_InitAnim(v0->unk_08, 1);
            PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
            PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_SHADOW_IS_AFFINE, 0);
            PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER, v0->unk_14);
            PokemonSprite_LoadAnim(v0->unk_04->unk_1A0, BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

            {
                u8 v4;

                PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v4, v0->unk_16, v0->unk_1C);
                Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, 117, 127, NULL, 5, v4);
            }

            ManagedSprite_SetPositionXY(v0->unk_0C->unk_00, 24 * 8, 8 * 11);
            PokemonSprite_StartFade(v0->unk_08, 8, 0, 0, 0x0);

            v0->unk_12++;
        }
        break;
    case 3:
        if ((sub_020160F4(BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_11) == 1) && (PokemonSprite_IsAnimActive(v0->unk_08) == 0)) {
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
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            v0->unk_12 = 0xff;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(0);
        ClearCommand(v0->unk_00, v0->unk_11, v0->unk_10);
        Heap_Free(param1);
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

            if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_2vs2) {
                if ((BattleSystem_BattleStatus(v0->unk_00) & 0x20) == 0) {
                    if (v0->unk_82 == 2) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, HEAP_ID_BATTLE);
                    }
                }
            } else {
                if ((BattleSystem_BattleStatus(v0->unk_00) & 0x20) == 0) {
                    if ((ov16_0223ED60(v0->unk_00) == 1) && (v0->unk_82 == 2)) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, HEAP_ID_BATTLE);
                    } else if (v0->unk_82 == 0) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, HEAP_ID_BATTLE);
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
        v0->unk_08 = ov12_02236004(HEAP_ID_BATTLE, &v1);

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
                PokemonSpriteManager *v2;
                SpriteAnimFrame v3[10];

                v2 = ov16_0223E000(v0->unk_00);
                PokemonSprite_LoadAnimFrames(v0->unk_04->unk_1A0, &v3[0], v0->unk_86, v0->unk_82);
                v0->unk_04->unk_20 = ov16_02263B30(v0->unk_00, v2, &v0->unk_14, Unk_ov12_0223B0A0[v0->unk_82][0], Unk_ov12_0223B0B8[v0->unk_82][1], Unk_ov12_0223B0B8[v0->unk_82][2], v0->unk_85, v0->unk_90, v0->unk_91, v0->unk_93, v0->unk_81, &v3[0], NULL);

                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X, 0x0);
                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_Y, 0x0);
                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_HIDE, 1);
            }

            PokemonSprite_StartFade(v0->unk_04->unk_20, 16, 16, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_HIDE, 0);

            ov12_022363B4(v0->unk_08);

            if (v0->unk_84 == 2) {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, 117);
            } else {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, -117);
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
        if ((PokemonSprite_GetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X) == 0x100) && (ov12_022363C4(v0->unk_08) == 0)) {
            if (v0->unk_84 == 2) {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);
                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v4;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v4, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v4);
                }
            } else {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);

                {
                    u8 v5;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v5, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v5);
                }
            }

            PokemonSprite_LoadAnim(v0->unk_04->unk_1A0, BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            PokemonSprite_StartFade(v0->unk_04->unk_20, 16, 0, 0, Unk_ov16_0226F1AE[v0->unk_8E]);

            v0->unk_83 = 5;
        } else if (PokemonSprite_GetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X) >= 0x100) {
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_Y, 0x100);

            if (v0->unk_84 == 2) {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);
                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v6;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v6, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v6);
                }
            } else {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);

                {
                    u8 v7;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v7, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v7);
                }
            }

            PokemonSprite_LoadAnim(v0->unk_04->unk_1A0, BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            PokemonSprite_StartFade(v0->unk_04->unk_20, 16, 0, 1, Unk_ov16_0226F1AE[v0->unk_8E]);

            v0->unk_83 = 5;
        } else {
            PokemonSprite_AddAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X, 0x20);
            PokemonSprite_AddAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_Y, 0x20);
            PokemonSprite_CalcScaledYOffset(v0->unk_04->unk_20, v0->unk_90);
        }
        break;
    case 5:
        if (ov12_022363C4(v0->unk_08) == 0) {
            v0->unk_83 = 6;
        }
        break;
    case 6:
        if ((sub_020160F4(BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_81) == 1) && (PokemonSprite_IsAnimActive(v0->unk_04->unk_20) == 0)) {
            ov12_0223783C(v0->unk_04->unk_84);
            v0->unk_04->unk_84 = NULL;
            ov12_02236428(v0->unk_08);

            if (v0->unk_92) {
                {
                    UnkStruct_ov16_02265BBC v8;

                    v0->unk_24 = BattleAnimSystem_New(HEAP_ID_BATTLE);
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
        BattleAnimSystem_ExecuteScript(v0->unk_24);

        if (BattleAnimSystem_IsMoveActive(v0->unk_24) == 0) {
            BattleAnimSystem_FreeScriptData(v0->unk_24);
            BattleAnimSystem_Delete(v0->unk_24);
            v0->unk_83 = 0xff;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(0);
        ClearCommand(v0->unk_00, v0->unk_81, v0->unk_80);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225F0C0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225EA80 *v0 = (UnkStruct_ov16_0225EA80 *)param1;
    BattleAnimSystem *v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_83) {
    case 0: {
        BallThrow v2;

        v2.type = Unk_ov16_0226F174[v0->unk_82];
        v2.heapID = HEAP_ID_BATTLE;
        v2.target = v0->unk_81;
        v2.ballID = v0->unk_8E;
        v2.cellActorSys = BattleSystem_GetSpriteSystem(v0->unk_00);
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
            PokemonSpriteManager *v3;
            SpriteAnimFrame v4[10];

            v3 = ov16_0223E000(v0->unk_00);
            PokemonSprite_LoadAnimFrames(v0->unk_04->unk_1A0, &v4[0], v0->unk_86, v0->unk_82);
            v0->unk_04->unk_20 = ov16_02263B30(v0->unk_00, v3, &v0->unk_14, Unk_ov12_0223B0A0[v0->unk_82][0], Unk_ov12_0223B0B8[v0->unk_82][1], Unk_ov12_0223B0B8[v0->unk_82][2], v0->unk_85, v0->unk_90, v0->unk_91, v0->unk_93, v0->unk_81, &v4[0], NULL);

            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X, 0x0);
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_Y, 0x0);
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_HIDE, 1);
        }
        {
            v0->unk_10 = NULL;
            v0->unk_10 = ov12_02223764(v0->unk_00, HEAP_ID_BATTLE);
        }
        v0->unk_83++;
        break;
    case 1: {
        UnkStruct_ov12_02236030 v5 = { 0 };

        v5.unk_00 = v0->unk_82;
        v5.unk_08 = BattleSystem_PartyPokemon(v0->unk_00, v0->unk_81, v0->unk_8C);
        v5.unk_04 = v0->unk_8E;

        v0->unk_08 = ov12_02236004(HEAP_ID_BATTLE, &v5);
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

            PokemonSprite_StartFade(v0->unk_04->unk_20, 16, 16, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_HIDE, 0);

            ov12_022363B4(v0->unk_08);

            if (v0->unk_84 == 2) {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, 117);
            } else {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, -117);
            }

            v0->unk_83++;
        }
        break;
    case 3:
        if (ov12_022377F8(v0->unk_0C) != 1) {
            v0->unk_83++;
        }
    case 4:
        if ((PokemonSprite_GetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X) == 0x100) && (ov12_022363C4(v0->unk_08) == 0)) {
            if (v0->unk_84 == 2) {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);
                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v6;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v6, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v6);
                }
            } else {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);

                {
                    u8 v7;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v7, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v7);
                }
            }

            PokemonSprite_LoadAnim(v0->unk_04->unk_1A0, BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            PokemonSprite_StartFade(v0->unk_04->unk_20, 16, 0, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            v0->unk_83 = 5;
        } else if (PokemonSprite_GetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X) >= 0x100) {
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_Y, 0x100);

            if (v0->unk_84 == 2) {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);
                PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v8;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v8, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v8);
                }
            } else {
                PokemonSprite_InitAnim(v0->unk_04->unk_20, 1);

                {
                    u8 v9;

                    PokemonSprite_LoadCryDelay(v0->unk_04->unk_1A0, &v9, v0->unk_86, v0->unk_82);
                    Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v9);
                }
            }

            PokemonSprite_LoadAnim(v0->unk_04->unk_1A0, BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            PokemonSprite_StartFade(v0->unk_04->unk_20, 16, 0, 1, Unk_ov16_0226F1AE[v0->unk_8E]);
            v0->unk_83 = 5;
        } else {
            PokemonSprite_AddAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_X, 0x20);
            PokemonSprite_AddAttribute(v0->unk_04->unk_20, MON_SPRITE_SCALE_Y, 0x20);
            PokemonSprite_CalcScaledYOffset(v0->unk_04->unk_20, v0->unk_90);
        }
        break;
    case 5:
        if (ov12_022363C4(v0->unk_08) == 0) {
            v0->unk_83 = 6;
        }
        break;
    case 6:
        if ((sub_020160F4(BattleSystem_GetPokemonAnimationSystem(v0->unk_00), v0->unk_81) == 1) && (PokemonSprite_IsAnimActive(v0->unk_04->unk_20) == 0)) {
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
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
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
        ov12_02238390(&v12, HEAP_ID_BATTLE);
        ov16_02266B78(v0->unk_00, NULL, &v13, 1, 16, v0->unk_81, v0->unk_81, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v13);

        v0->unk_04->unk_19C = 1;
    }
        v0->unk_83++;
        break;
    default:
        ClearCommand(v0->unk_00, v0->unk_81, v0->unk_80);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225F764(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225F764 *v0 = (UnkStruct_ov16_0225F764 *)param1;
    BattleAnimSystem *v1 = ov16_0223E008(v0->unk_00);

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
        ov12_022382BC(&v3, HEAP_ID_BATTLE);
        ov16_02266B78(v0->unk_00, NULL, &v4, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_6B++;
        break;
    case 1:
    case 3:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            v0->unk_6B++;
        }
        break;
    case 4:
        if (v0->unk_6A & 0x1) {
            {
                BallThrow v5;

                v5.type = Unk_ov16_0226F174[v0->unk_6A];
                v5.heapID = HEAP_ID_BATTLE;
                v5.mode = 5;
                v5.target = v0->unk_69;
                v5.ballID = v0->unk_6E;
                v5.cellActorSys = BattleSystem_GetSpriteSystem(v0->unk_00);
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
                v6.heapID = HEAP_ID_BATTLE;
                v6.mode = 5;
                v6.target = v0->unk_69;
                v6.ballID = v0->unk_6E;
                v6.cellActorSys = BattleSystem_GetSpriteSystem(v0->unk_00);
                v6.paletteSys = BattleSystem_PaletteSys(v0->unk_00);
                v6.bgPrio = 1;
                v6.surface = 0;
                v0->unk_0C = ov12_02237728(&v6);
            }
        }

        v0->unk_6B = 5;
        PokemonSprite_StartFade(v0->unk_08, 0, 16, 0, Unk_ov16_0226F1AE[v0->unk_6E]);

        switch (v0->unk_6A) {
        case 0:
        case 2:
        case 4:
            Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, -117);
            break;
        case 1:
        case 3:
        case 5:
            Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, 117);
            break;
        }
        break;
    case 5:
        if (PokemonSprite_IsFadeActive(v0->unk_08) == 0) {
            v0->unk_6B++;
        }
        break;
    case 6:
        PokemonSprite_AddAttribute(v0->unk_08, MON_SPRITE_SCALE_X, -0x20);
        PokemonSprite_AddAttribute(v0->unk_08, MON_SPRITE_SCALE_Y, -0x20);
        PokemonSprite_CalcScaledYOffset(v0->unk_08, v0->unk_6C);

        if (PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_SCALE_X) <= 0x0) {
            PokemonSprite_Delete(v0->unk_08);

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
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225FA00(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D1C4 *v0 = (UnkStruct_ov16_0225D1C4 *)param1;

    switch (v0->unk_0B) {
    case 0:
        PokemonSprite_AddAttribute(v0->unk_04, MON_SPRITE_SCALE_X, -0x20);
        PokemonSprite_AddAttribute(v0->unk_04, MON_SPRITE_SCALE_Y, -0x20);

        if (v0->unk_0C) {
            v0->unk_0C--;
            PokemonSprite_AddAttribute(v0->unk_04, MON_SPRITE_Y_CENTER, -1);
        }

        if (PokemonSprite_GetAttribute(v0->unk_04, MON_SPRITE_SCALE_X) <= 0x0) {
            PokemonSprite_Delete(v0->unk_04);
            v0->unk_0B++;
        }
        break;
    case 1:
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225FA70(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02264650_1 *v0 = (UnkStruct_ov16_02264650_1 *)param1;
    s16 v1, v2, v3, v4;
    u32 battleType = BattleSystem_BattleType(v0->unk_00);

    if ((v0->unk_1C < 33) && (v0->unk_0E >= 2) && ((v0->unk_14 == 0) || (v0->unk_14 == 2))) {
        Bg_SetOffset(BattleSystem_BGL(v0->unk_00), 3, 1, 4);
        v0->unk_1C++;
    }

    switch (v0->unk_0E) {
    case 0:
        if (ManagedSprite_GetNumFrames(v0->unk_08) > 2) {
            ManagedSprite_SetAnimationFrame(v0->unk_08, 0);
            ManagedSprite_SetAnim(v0->unk_08, 2);
        }

        v0->unk_18 = 28;
        v0->unk_0E = 1;
    case 1:
        if (--v0->unk_18) {
            break;
        }

        v0->unk_0E = 2;
    case 2:
        ManagedSprite_GetPositionXY(v0->unk_04->unk_00, &v1, &v2);
        ManagedSprite_GetPositionXY(v0->unk_08, &v3, &v4);

        if (v0->unk_0F == 2) {
            if ((v0->unk_14 == 1) || (v0->unk_14 == 3)) {
                if (v1 < (24 * 8)) {
                    ManagedSprite_OffsetPositionXY(v0->unk_04->unk_00, 8, 0);
                } else {
                    ManagedSprite_SetPositionXY(v0->unk_04->unk_00, 24 * 8, 8 * 11);
                }
            }

            ManagedSprite_GetPositionXY(v0->unk_04->unk_00, &v1, &v2);

            if ((v0->unk_14 == 1) || ((v0->unk_14 == 3) && ((battleType == BATTLE_TYPE_TRAINER_DOUBLES) || (battleType == BATTLE_TYPE_FRONTIER_DOUBLES) || (battleType == ((BATTLE_TYPE_LINK | BATTLE_TYPE_TRAINER) | BATTLE_TYPE_DOUBLES))))) {
                ManagedSprite_SetPositionXY(v0->unk_08, v1, v4);
            } else if (v0->unk_14 == 3) {
                v1 = v3 - v1;
                v1 -= 24;

                ManagedSprite_OffsetPositionXY(v0->unk_08, -v1, 0);
            } else if (v0->unk_14 == 5) {
                v1 = v1 - v3;
                v1 -= 16;

                ManagedSprite_OffsetPositionXY(v0->unk_08, v1, 0);
            }

            ManagedSprite_GetPositionXY(v0->unk_08, &v3, &v4);

            if (v3 >= v0->unk_10) {
                ManagedSprite_SetPositionXY(v0->unk_08, v0->unk_10, v4);

                if ((v0->unk_14 == 1) || (v0->unk_14 == 3)) {
                    ManagedSprite_SetPositionXY(v0->unk_04->unk_00, 24 * 8, 8 * 11);
                }

                if (ManagedSprite_GetNumFrames(v0->unk_08) > 1) {
                    ManagedSprite_SetAnimationFrame(v0->unk_08, 0);
                    ManagedSprite_SetAnim(v0->unk_08, 1);
                    v0->unk_12_0 = 0;
                    v0->unk_0E = 3;
                } else {
                    v0->unk_0E = 4;
                }
            }
        } else {
            if ((v0->unk_14 == 0) || (v0->unk_14 == 2)) {
                if (v1 > 64) {
                    ManagedSprite_OffsetPositionXY(v0->unk_04->unk_00, -8, 0);
                } else {
                    ManagedSprite_SetPositionXY(v0->unk_04->unk_00, 64, 128 + 8);
                }
            }

            ManagedSprite_GetPositionXY(v0->unk_04->unk_00, &v1, &v2);

            if ((v0->unk_14 == 0) || ((v0->unk_14 == 2) && ((battleType == BATTLE_TYPE_TRAINER_DOUBLES) || (battleType == BATTLE_TYPE_FRONTIER_DOUBLES) || (battleType == BATTLE_TYPE_TAG_DOUBLES) || (battleType == BATTLE_TYPE_LINK_DOUBLES)))) {
                ManagedSprite_SetPositionXY(v0->unk_08, v1, v4);
            } else if (v0->unk_14 == 2) {
                v1 = v1 - v3;
                v1 -= 24;

                ManagedSprite_OffsetPositionXY(v0->unk_08, v1, 0);
            } else if (v0->unk_14 == 4) {
                v1 = v3 - v1;
                v1 -= 16;

                ManagedSprite_OffsetPositionXY(v0->unk_08, -v1, 0);
            }

            ManagedSprite_GetPositionXY(v0->unk_08, &v3, &v4);

            if (v3 <= v0->unk_10) {
                ManagedSprite_SetPositionXY(v0->unk_08, v0->unk_10, v4);

                if ((v0->unk_14 == 0) || (v0->unk_14 == 2)) {
                    ManagedSprite_SetPositionXY(v0->unk_04->unk_00, 64, 128 + 8);
                }

                v0->unk_0E = 4;
            }
        }
        break;
    case 3:
        if (ManagedSprite_IsAnimated(v0->unk_08) == 1) {
            if (ov16_02264650(v0, v0->unk_08) == 0) {
                break;
            }
        }

        v0->unk_0E = 4;
    case 4:
        ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_0225FD5C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D360 *v0 = (UnkStruct_ov16_0225D360 *)param1;
    s16 v1, v2;
    int v3;
    u32 battleType;
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

    battleType = BattleSystem_BattleType(v0->unk_00);

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

                v6.heapID = HEAP_ID_BATTLE;
                v6.mode = 4;
                v6.target = v0->unk_09;
                v6.cellActorSys = BattleSystem_GetSpriteSystem(v0->unk_00);
                v6.paletteSys = BattleSystem_PaletteSys(v0->unk_00);
                v6.surface = 0;
                v6.battleSys = v0->unk_00;

                v0->unk_04->unk_84 = ov12_02237728(&v6);

                ov12_02237E34(v0->unk_04->unk_84, 100);
                ov12_02237E40(v0->unk_04->unk_84, 2);
                ov12_02237E30(v0->unk_04->unk_84, 0);

                ManagedSprite_SetAnimationFrame(v0->unk_04->unk_18, 0);
                ManagedSprite_SetAnim(v0->unk_04->unk_18, 1);
                ManagedSprite_SetAnimateFlag(v0->unk_04->unk_18, 1);

                v0->unk_0A = 3;
            }
        }
        break;
    case 1:
        if (v0->unk_0B == 2) {
            ManagedSprite_OffsetPositionXY(v0->unk_04->unk_18, 5, 0);
            ManagedSprite_GetPositionXY(v0->unk_04->unk_18, &v1, &v2);

            if ((v1 >= (256 - 48) - 48) && (ov12_02237890(v0->unk_04->unk_84) != 0)) {
                ov12_02237E0C(v0->unk_04->unk_84, 1);
                ov12_0223786C(v0->unk_04->unk_84, 0);

                if ((battleType & BATTLE_TYPE_DOUBLES) && ((battleType & BATTLE_TYPE_2vs2) == 0)) {
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
                    SpriteManager *v8;

                    v8 = BattleSystem_GetSpriteManager(v0->unk_00);
                    Sprite_DeleteAndFreeResources(v0->unk_04->unk_18);
                    v0->unk_04->unk_18 = NULL;

                    SpriteManager_UnloadCharObjById(v8, 20015 + v0->unk_04->battlerType);
                    SpriteManager_UnloadPlttObjById(v8, 20010 + v0->unk_04->battlerType);
                    SpriteManager_UnloadCellObjById(v8, 20007 + v0->unk_04->battlerType);
                    SpriteManager_UnloadAnimObjById(v8, 20007 + v0->unk_04->battlerType);
                }
                v0->unk_0A = 6;
            }
        } else {
            ManagedSprite_SetAnimationFrame(v0->unk_04->unk_18, 0);
            ManagedSprite_SetAnim(v0->unk_04->unk_18, 1);
            ManagedSprite_SetAnimateFlag(v0->unk_04->unk_18, 1);
            v0->unk_0A = 2;
        }
        break;
    case 2:
        ManagedSprite_OffsetPositionXY(v0->unk_04->unk_18, -5, 0);
        ManagedSprite_GetPositionXY(v0->unk_04->unk_18, &v1, &v2);

        if (v0->unk_04->unk_84) {
            v3 = ManagedSprite_GetAnimationFrame(v0->unk_04->unk_18);

            if (v5[v0->unk_0C][v3][0] != 0x7fff) {
                ov12_02237E0C(v0->unk_04->unk_84, 1);
                ov12_02237E18(v0->unk_04->unk_84, v1 + v5[v0->unk_0C][v3][0], v2 + v5[v0->unk_0C][v3][1]);

                if ((v3 == 3) && (ov12_02237890(v0->unk_04->unk_84) != 0)) {
                    ov12_0223786C(v0->unk_04->unk_84, 0);
                    ov12_02237E30(v0->unk_04->unk_84, 1);

                    if ((battleType & BATTLE_TYPE_DOUBLES) && ((battleType & BATTLE_TYPE_2vs2) == 0)) {
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
                SpriteManager *v10;

                v10 = BattleSystem_GetSpriteManager(v0->unk_00);

                Sprite_DeleteAndFreeResources(v0->unk_04->unk_18);
                v0->unk_04->unk_18 = NULL;

                SpriteManager_UnloadCharObjById(v10, 20015 + v0->unk_04->battlerType);
                SpriteManager_UnloadPlttObjById(v10, 20010 + v0->unk_04->battlerType);
                SpriteManager_UnloadCellObjById(v10, 20007 + v0->unk_04->battlerType);
                SpriteManager_UnloadAnimObjById(v10, 20007 + v0->unk_04->battlerType);
            }
            v0->unk_0A = 6;
        }
        break;
    case 3:
        ManagedSprite_GetPositionXY(v0->unk_04->unk_18, &v1, &v2);
        v3 = ManagedSprite_GetAnimationFrame(v0->unk_04->unk_18);

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
                        Sound_PlayEffect(SEQ_SE_DP_NAGERU);
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
        Heap_Free(param1);
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
            ManagedSprite_OffsetPositionXY(v0->unk_04->unk_18, 5, 0);
            ManagedSprite_GetPositionXY(v0->unk_04->unk_18, &v1, &v2);

            if (v1 >= (256 + 40)) {
                v0->unk_0A++;
            }
        } else {
            ManagedSprite_OffsetPositionXY(v0->unk_04->unk_18, -5, 0);
            ManagedSprite_GetPositionXY(v0->unk_04->unk_18, &v1, &v2);

            if (v1 <= -40) {
                v0->unk_0A++;
            }
        }
        break;
    case 1: {
        SpriteManager *v3;

        v3 = BattleSystem_GetSpriteManager(v0->unk_00);
        Sprite_DeleteAndFreeResources(v0->unk_04->unk_18);
        v0->unk_04->unk_18 = NULL;

        SpriteManager_UnloadCharObjById(v3, 20015 + v0->unk_04->battlerType);
        SpriteManager_UnloadPlttObjById(v3, 20010 + v0->unk_04->battlerType);
        SpriteManager_UnloadCellObjById(v3, 20007 + v0->unk_04->battlerType);
        SpriteManager_UnloadAnimObjById(v3, 20007 + v0->unk_04->battlerType);
    }
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_Free(param1);
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
        ManagedSprite_GetPositionXY(v0->unk_04, &v1, &v2);

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

        ManagedSprite_SetPositionXY(v0->unk_04, v1, v2);
        break;
    case 1:
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

enum SlideHealthbarInState {
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

enum SlideHealthbarOutState {
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
    BgConfig *v1;
    UnkStruct_ov16_02268A14 *v2;
    BattlerData *v3;
    u32 battleType;
    int v5;
    Healthbar *v6;

    v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    v1 = BattleSystem_BGL(v0->unk_00);
    v2 = ov16_0223E02C(v0->unk_00);
    v3 = BattleSystem_BattlerData(v0->unk_00, v0->unk_09);
    battleType = BattleSystem_BattleType(v0->unk_00);
    v5 = BattleSystem_Partner(v0->unk_00, v0->unk_09);

    if (v5 != v0->unk_09) {
        v6 = ov16_0223F35C(v0->unk_00, v5);
    } else {
        v6 = NULL;
    }

    switch (v0->unk_0A) {
    case 0:

    {
        MoveDisplayInfo v7;
        int i;

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            v7.move[i] = v0->unk_24[i];
            v7.curPP[i] = v0->unk_2C[i];
            v7.maxPP[i] = v0->unk_30[i];
        }

        ov16_0226AC98(ov16_0223E02C(v0->unk_00), v0->unk_34, &v7);
    }
        v0->unk_0A++;

    case 1: {
        MessageLoader *v9;
        BattleMessage v10;

        v9 = BattleSystem_MessageLoader(v0->unk_00);

        if (battleType & BATTLE_TYPE_CATCH_TUTORIAL) {
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
                v10.id = 1226 + BattleSystem_GetTrainerGender(v0->unk_00, 0);
                v0->unk_35 = BattleMessage_Print(v0->unk_00, v9, &v10, BattleSystem_TextSpeed(v0->unk_00));
                v0->unk_0A = 2;
                break;
            }
        } else {
            if (battleType & BATTLE_TYPE_SAFARI) {
                v10.tags = 8;
                v10.params[0] = Battler_TrainerID(v0->unk_00, v0->unk_09);
                v10.id = 922;
            } else if (battleType & BATTLE_TYPE_PAL_PARK) {
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

            v12 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            v13 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

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
                } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_PAL_PARK) {
                    ov16_02268C04(v12, v13, v2, 10, 0, &v11);
                } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_SAFARI) {
                    ov16_02268C04(v12, v13, v2, 8, 0, &v11);
                } else if ((v11.unk_00 == 4) && ((BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_2vs2) == FALSE)) {
                    ov16_02268C04(v12, v13, v2, 4, 0, &v11);
                } else {
                    ov16_02268C04(v12, v13, v2, 3, 0, &v11);
                }

                BattleSystem_SetCommandSelectionFlags(v0->unk_00, 1);
            } else {
                if (BattleSystem_BattleStatus(v0->unk_00) & 0x1) {
                    ov16_02268C04(v12, v13, v2, 5, 0, &v11);
                } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_PAL_PARK) {
                    ov16_02268C04(v12, v13, v2, 9, 0, &v11);
                } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_SAFARI) {
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
        if (gSystem.pressedKeys & PAD_BUTTON_START) {
            BattlerData *v14;
            int i;

            for (i = 0; i < BattleSystem_MaxBattlers(v0->unk_00); i++) {
                v14 = BattleSystem_BattlerData(v0->unk_00, i);
                ov16_0226737C(&v14->healthbar);
            }
        }

        v0->unk_0C = ov16_0226925C(v2);

        if (v0->unk_0C != 0xffffffff) {
            v0->unk_0B = 10;
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            v0->unk_0A = 6;
        }
        break;
    case 6:
        if ((ov16_02269348(v2) == 1) || (v0->unk_0C == 1)) {
            switch (v0->unk_0C) {
            case 1:
                if (BattleSystem_BattleType(v0->unk_00) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
                    v0->unk_0A = 7;
                }
                break;
            case 2: {
                NARC *v16 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v17 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                ov16_02268C04(v16, v17, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(v6);
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v3);
                NARC_dtor(v16);
                NARC_dtor(v17);
            } break;
            case 3: {
                NARC *v18 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v19 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                ov16_02268C04(v18, v19, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(v6);
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v3);
                NARC_dtor(v18);
                NARC_dtor(v19);
            } break;
            case 4: {
                NARC *v20 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v21 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

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
            NARC *v22 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *v23 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

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
            Heap_Free(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_02260AB4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    int v1 = TrainerAI_PickCommand(v0->unk_00, v0->unk_09);

    ov16_022656D4(v0->unk_00, v0->unk_09, v1);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_02260AE4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;

    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
    Heap_Free(param1);
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
    u8 v3 = ov16_0223ED6C(v0->unk_00);
    v2 = BattleMon_Get(BattleSystem_Context(v0->unk_00), v0->unk_09, 0, NULL);
    v1 = SpeciesData_GetSpeciesValue(v2, SPECIES_DATA_SAFARI_FLEE_RATE);
    v1 = v1 * Unk_ov16_0226F194[v3][0] / Unk_ov16_0226F194[v3][1];

    if ((BattleSystem_RandNext(v0->unk_00) % 255) <= v1) {
        ov16_022656D4(v0->unk_00, v0->unk_09, 4);
    } else {
        ov16_022656D4(v0->unk_00, v0->unk_09, 5);
    }

    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_02260B84(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D5B8 *v0 = (UnkStruct_ov16_0225D5B8 *)param1;

    ov16_022656D4(v0->unk_00, v0->unk_09, 4);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_Free(param1);
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

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_02260C00(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D698 *v0 = (UnkStruct_ov16_0225D698 *)param1;
    BgConfig *v1 = BattleSystem_BGL(v0->unk_00);
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
            int i;
            NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *v11 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            for (i = 0; i < 4; i++) {
                v8.moveIDs[i] = v0->unk_0C[i];
                v8.unk_08[i] = v0->unk_14[i];
                v8.unk_0C[i] = v0->unk_18[i];
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
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            v0->unk_20++;
        }
        break;
    case 2:
        if (1) {
            if (v0->unk_08 != 0xff) {
                if ((BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_DOUBLES) == FALSE) {
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
            Heap_Free(param1);
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
    u32 battleType = BattleSystem_BattleType(v0->unk_00);
    v1 = BattleSystem_Context(v0->unk_00);

    if ((battleType & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_ROAMER)) || (BattleSystem_BattleStatus(v0->unk_00) & 0x1) || (Battler_Side(v0->unk_00, v0->unk_1D) == 0)) {
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
            int i;
            int v5[4];
            int v6;

            v6 = 0;

            for (i = 0; i < 4; i++) {
                if ((v0->unk_22 & FlagIndex(i)) == 0) {
                    v5[v6] = i + 1;
                    v6++;
                }
            }

            v2 = v5[BattleSystem_RandNext(v0->unk_00) % v6];
        }

        BattleContext_Set(v0->unk_00, v1, 11, v0->unk_1D, BattleSystem_Defender(v0->unk_00, v1, v0->unk_1D, v0->unk_0C[v2 - 1], 1, NULL));
    }

    ov16_02265790(v0->unk_00, v0->unk_1D, v2);
    ClearCommand(v0->unk_00, v0->unk_1D, v0->unk_1C);

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_02260E78(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D698 *v0 = (UnkStruct_ov16_0225D698 *)param1;

    ClearCommand(v0->unk_00, v0->unk_1D, v0->unk_1C);
    Heap_Free(param1);
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

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_02260F14(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D708 *v0 = (UnkStruct_ov16_0225D708 *)param1;
    BgConfig *v1 = BattleSystem_BGL(v0->unk_00);
    UnkStruct_ov16_02268A14 *v2;
    int v3;
    Healthbar *v4;
    BattlerData *v5 = BattleSystem_BattlerData(v0->unk_00, v0->unk_0D);
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
            int i;
            NARC *v8 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            for (i = 0; i < 4; i++) {
                v6.unk_00[i] = v0->unk_10[i];
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
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
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
                u32 battleType;
                int v12;

                v12 = v0->unk_08;
                battleType = BattleSystem_BattleType(v0->unk_00);

                if (v12 != 0xff) {
                    ov16_0223F858(v0->unk_00, &v10[0]);

                    if (battleType & BATTLE_TYPE_DOUBLES) {
                        v12 = v10[2 + (v0->unk_08 - 1)] + 1;
                    } else {
                        v12 = v10[0 + (v0->unk_08 - 1)] + 1;
                    }
                }

                ov16_022658CC(v0->unk_00, v0->unk_0D, v12);
                ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);
                Heap_Free(param1);
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

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_022610EC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D708 *v0 = (UnkStruct_ov16_0225D708 *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_Free(param1);
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

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_022611DC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D794 *v0 = (UnkStruct_ov16_0225D794 *)param1;
    PaletteData *v1 = BattleSystem_PaletteSys(v0->unk_00);

    switch (v0->unk_0E) {
    case 0:
        v0->unk_10 = ov16_0226CD08(ov16_0223E02C(v0->unk_00));
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 0, 7, 0x0);
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 0, 16, 0x0);
        v0->unk_0E++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            {
                ov16_0223B384(v0->unk_00);

                v0->unk_04 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleBagContext));
                memset(v0->unk_04, 0, sizeof(BattleBagContext));

                v0->unk_04->battleSystem = v0->unk_00;
                v0->unk_04->trainerInfo = BattleSystem_TrainerInfo(v0->unk_00, v0->unk_0D);
                v0->unk_04->heapID = HEAP_ID_BATTLE;
                v0->unk_04->battleBagExited = FALSE;
                v0->unk_04->bag = BattleSystem_Bag(v0->unk_00);
                v0->unk_04->battler = v0->unk_0D;
                v0->unk_04->isCursorEnabled = v0->unk_10;
                v0->unk_04->hasTwoOpponents = v0->unk_14;
                v0->unk_04->opponentHidden = v0->unk_15;
                v0->unk_04->opponentSubstituted = v0->unk_16;
                v0->unk_04->embargoRemainingTurns = v0->unk_30[v0->unk_0D];
                BattleBagTask_Start(v0->unk_04);
                v0->unk_0E = 3;
            }
        }
        break;
    case 2:
        v0->unk_04->isCursorEnabled = v0->unk_10;
        BattleBagTask_Start(v0->unk_04);
        v0->unk_0E++;
    case 3:
        if (v0->unk_04->battleBagExited) {
            v0->unk_04->battleBagExited = 0;
            v0->unk_10 = v0->unk_04->isCursorEnabled;

            if (v0->unk_04->selectedBattleBagItem) {
                switch (v0->unk_04->selectedBattleBagPocket) {
                case BATTLE_POCKET_INDEX_RECOVER_STATUS:
                case BATTLE_POCKET_INDEX_RECOVER_HP_PP:
                    v0->unk_0E = 4;
                    break;
                case BATTLE_POCKET_INDEX_BATTLE_ITEMS:
                case BATTLE_POCKET_INDEX_POKE_BALLS:
                    v0->unk_0E = 6;
                    break;
                }
            } else {
                v0->unk_0E = 6;
            }
        }
        break;
    case 4: {
        int i;
        int v3 = 0;
        int v4;
        Party *v5 = BattleSystem_Party(v0->unk_00, v0->unk_0D);
        Pokemon *v6;

        if ((BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_DOUBLES) && ((BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_2vs2) == 0)) {
            v4 = v0->unk_0D & 1;
        } else {
            v4 = v0->unk_0D;
        }

        Party_InitWithCapacity(v0->unk_08->unk_04->party, 6);

        for (i = 0; i < Party_GetCurrentCount(v5); i++) {
            v6 = BattleSystem_PartyPokemon(v0->unk_00, v4, v0->unk_18[v4][i]);
            Party_AddPokemon(v0->unk_08->unk_04->party, v6);
            v0->unk_08->unk_04->pokemonPartySlots[i] = v0->unk_18[v4][i];
        }

        v0->unk_08->unk_04->battleSystem = v0->unk_00;
        v0->unk_08->unk_04->heapID = HEAP_ID_BATTLE;
        v0->unk_08->unk_04->selectedPartyIndex = 0;
        v0->unk_08->unk_04->battlePartyExited = 0;
        v0->unk_08->unk_04->moveToLearn = MOVE_NONE;
        v0->unk_08->unk_04->battlePartyMode = BATTLE_PARTY_MODE_USE_ITEM;
        v0->unk_08->unk_04->selectedBattleBagItem = v0->unk_04->selectedBattleBagItem;
        v0->unk_08->unk_04->selectedBattleBagPocket = v0->unk_04->selectedBattleBagPocket;
        v0->unk_08->unk_04->battler = v0->unk_04->battler;
        v0->unk_08->unk_04->isCursorEnabled = v0->unk_10;
        v0->unk_08->unk_04->playerPokemonPartySlot = v0->unk_08->unk_0C[v0->unk_0D];
        v0->unk_08->unk_04->partnerPokemonPartySlot = v0->unk_08->unk_0C[BattleSystem_Partner(v0->unk_00, v0->unk_0D)];

        if (v0->unk_0F == 4) {
            v0->unk_08->unk_04->embargoRemainingTurns[0] = v0->unk_30[BattleSystem_Partner(v0->unk_00, v0->unk_0D)];
            v0->unk_08->unk_04->embargoRemainingTurns[1] = v0->unk_30[v0->unk_0D];
        } else {
            v0->unk_08->unk_04->embargoRemainingTurns[0] = v0->unk_30[v0->unk_0D];
            v0->unk_08->unk_04->embargoRemainingTurns[1] = v0->unk_30[BattleSystem_Partner(v0->unk_00, v0->unk_0D)];
        }

        BattlePartyTask_Start(v0->unk_08->unk_04);
        v0->unk_0E++;
    } break;
    case 5:
        if (v0->unk_08->unk_04->battlePartyExited) {
            v0->unk_10 = v0->unk_08->unk_04->isCursorEnabled;
            v0->unk_08->unk_04->battlePartyExited = 0;

            if (v0->unk_08->unk_04->selectedPartyIndex == 6) {
                v0->unk_0E = 2;
            } else {
                v0->unk_0E = 6;
            }
        }
        break;
    case 6:
        ov16_0223B430(v0->unk_00);
        ov16_0226CD10(ov16_0223E02C(v0->unk_00), v0->unk_10);
        PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 7, 0, 0x0);
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 16, 0, 0x0);
        v0->unk_0E++;
        break;
    case 7:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            sub_02015738(ov16_0223E220(v0->unk_00), 0);

            if (v0->unk_04->selectedBattleBagItem) {
                v0->unk_0E = 9;

                switch (v0->unk_04->selectedBattleBagPocket) {
                case BATTLE_POCKET_INDEX_RECOVER_STATUS:
                    if ((v0->unk_04->selectedBattleBagItem == ITEM_REVIVE) || (v0->unk_04->selectedBattleBagItem == ITEM_MAX_REVIVE)) {
                        v0->unk_0E = 8;
                    } else if (((v0->unk_08->unk_04->selectedPartyIndex < 2) && ((BattleSystem_BattleType(v0->unk_00) == BATTLE_TYPE_TRAINER_DOUBLES) || (BattleSystem_BattleType(v0->unk_00) == BATTLE_TYPE_TAG_DOUBLES))) || (v0->unk_08->unk_04->selectedPartyIndex < 1)) {
                        if (v0->unk_04->selectedBattleBagItem == ITEM_FULL_RESTORE) {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 17;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                                v0->unk_12 = 21;
                            }
                        } else {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 25;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                                v0->unk_12 = 29;
                            }
                        }
                    } else {
                        v0->unk_0E = 8;
                    }
                    break;
                case BATTLE_POCKET_INDEX_RECOVER_HP_PP:
                    if ((((v0->unk_08->unk_04->selectedPartyIndex < 2) && ((BattleSystem_BattleType(v0->unk_00) == BATTLE_TYPE_TRAINER_DOUBLES) || (BattleSystem_BattleType(v0->unk_00) == BATTLE_TYPE_TAG_DOUBLES))) || (v0->unk_08->unk_04->selectedPartyIndex < 1)) && (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HP_RESTORE, HEAP_ID_BATTLE))) {
                        if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                            v0->unk_12 = 17;
                        } else {
                            Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                            v0->unk_12 = 21;
                        }
                    } else {
                        v0->unk_0E = 8;
                    }
                    break;
                case BATTLE_POCKET_INDEX_BATTLE_ITEMS:
                    if ((v0->unk_04->selectedBattleBagItem == ITEM_POKE_DOLL) || (v0->unk_04->selectedBattleBagItem == ITEM_FLUFFY_TAIL)) {
                        v0->unk_0E = 8;
                    } else {
                        if (v0->unk_04->selectedBattleBagItem == ITEM_GUARD_SPEC) {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 13;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                                v0->unk_12 = 15;
                            }
                        } else {
                            if (BattleSystem_AnimationsOn(v0->unk_00) == 1) {
                                v0->unk_12 = 11;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                                v0->unk_12 = 15;
                            }
                        }
                    }
                    break;
                case BATTLE_POCKET_INDEX_POKE_BALLS:
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

        if (v0->unk_04->selectedBattleBagItem == ITEM_NONE) {
            v7.item = 0xff;
        } else {
            v7.item = v0->unk_04->selectedBattleBagItem;
            v7.category = v0->unk_04->selectedBattleBagPocket;

            if ((v0->unk_04->selectedBattleBagPocket == BATTLE_POCKET_INDEX_RECOVER_STATUS) || (v0->unk_04->selectedBattleBagPocket == BATTLE_POCKET_INDEX_RECOVER_HP_PP)) {
                v7.target = 1 + v0->unk_08->unk_04->pokemonPartySlots[v0->unk_08->unk_04->selectedPartyIndex];
            }
        }

        ov16_02265A70(v0->unk_00, v0->unk_0D, v7);
        ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

        Heap_Free(v0->unk_08->unk_04->party);
        Heap_Free(v0->unk_08->unk_04);
        Heap_Free(v0->unk_08);
        Heap_Free(v0->unk_04);
        Heap_Free(param1);
        SysTask_Done(param0);
    } break;
    case 9: {
        MessageLoader *v8;
        BattleMessage v9;

        v9.id = 1206;
        v9.tags = 5;
        v9.params[0] = v0->unk_04->selectedBattleBagItem;

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

        v12 = v0->unk_08->unk_04->selectedPartyIndex * 2;
        ov16_02266B78(v0->unk_00, NULL, &v11, 1, 9, v12, v12, NULL);
        ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v12), ov16_0223E008(v0->unk_00), &v11);
    }
        v0->unk_0E++;
        break;
    case 13: {
        UnkStruct_ov16_02265BBC v13;

        if (v0->unk_04->selectedBattleBagItem == ITEM_GUARD_SPEC) {
            ov16_02266B78(v0->unk_00, NULL, &v13, 0, NULL, v0->unk_0D, v0->unk_0D, 54);
            ov16_02264408(v0->unk_00, BattleSystem_BattlerData(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v13);
        } else if (v0->unk_04->selectedBattleBagItem == ITEM_DIRE_HIT) {
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

        switch (v0->unk_04->selectedBattleBagItem) {
        case ITEM_X_ATTACK:
            v15.params[1] = 0x1;
            break;
        case ITEM_X_DEFENSE:
            v15.params[1] = 0x2;
            break;
        case ITEM_X_SPEED:
            v15.params[1] = 0x3;
            break;
        case ITEM_X_ACCURACY:
            v15.params[1] = 0x6;
            break;
        case ITEM_X_SPECIAL:
            v15.params[1] = 0x4;
            break;
        case ITEM_X_SP_DEF:
            v15.params[1] = 0x5;
            break;
        case ITEM_GUARD_SPEC:
            v15.id = 1204;
            v15.tags = 0;
            break;
        case ITEM_DIRE_HIT:
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

        v17 = v0->unk_08->unk_04->selectedPartyIndex * 2;
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

        v20 = v0->unk_08->unk_04->selectedPartyIndex * 2;
        v21 = v0->unk_08->unk_04->pokemonPartySlots[v0->unk_08->unk_04->selectedPartyIndex];

        v18 = ov16_0223F35C(v0->unk_00, v20);
        MI_CpuClear8(&v18->state, sizeof(u8));
        v18->type = Healthbar_Type(BattleSystem_BattlerSlot(v0->unk_00, v20), BattleSystem_BattleType(v0->unk_00));

        v19 = BattleSystem_PartyPokemon(v0->unk_00, v20, v21);
        v18->curHP = Pokemon_GetValue(v19, MON_DATA_HP, NULL) - v0->unk_08->unk_04->currentDamage;
        v18->maxHP = Pokemon_GetValue(v19, MON_DATA_MAX_HP, NULL);
        v18->damage = v0->unk_08->unk_04->currentDamage;

        if (Pokemon_GetValue(v19, MON_DATA_STATUS, NULL) == 0) {
            v18->status = 0;
        }

        Healthbar_CalcHP(v18, v18->damage);
    }
        v0->unk_0E++;
        break;
    case 22: {
        Healthbar *v22;
        int v23;

        v23 = v0->unk_08->unk_04->selectedPartyIndex * 2;
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
        v26 = v0->unk_08->unk_04->selectedPartyIndex * 2;

        if (v0->unk_08->unk_04->currentDamage) {
            v25.id = 1214;
            v25.tags = 17;
            v25.params[0] = v26 | (v0->unk_08->unk_0C[v26] << 8);
            v25.params[1] = v0->unk_08->unk_04->currentDamage;
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

        v28 = v0->unk_08->unk_04->selectedPartyIndex * 2;
        v27 = ov16_0223F35C(v0->unk_00, v28);
        v34 = v0->unk_08->unk_04->pokemonPartySlots[v0->unk_08->unk_04->selectedPartyIndex];
        v33 = BattleSystem_PartyPokemon(v0->unk_00, v28, v34);

        if (Pokemon_GetValue(v33, MON_DATA_STATUS, NULL) == 0) {
            v27->status = 0;
        }

        Healthbar_DrawInfo(v27, v27->curHP, HEALTHBAR_INFO_STATUS);

        v30.tags = 2;
        v30.params[0] = v28 | (v0->unk_08->unk_0C[v28] << 8);

        if (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HEAL_SLEEP, HEAP_ID_BATTLE)) {
            v31 = 0;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HEAL_POISON, HEAP_ID_BATTLE)) {
            v31 = 1;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HEAL_BURN, HEAP_ID_BATTLE)) {
            v31 = 2;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HEAL_FREEZE, HEAP_ID_BATTLE)) {
            v31 = 3;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HEAL_PARALYSIS, HEAP_ID_BATTLE)) {
            v31 = 4;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HEAL_CONFUSION, HEAP_ID_BATTLE)) {
            v31 = 5;
            v32++;
        }

        if (Item_LoadParam(v0->unk_04->selectedBattleBagItem, ITEM_PARAM_HEAL_ATTRACT, HEAP_ID_BATTLE)) {
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
        BattleAnimSystem_ExecuteScript(ov16_0223E008(v0->unk_00));

        if (BattleAnimSystem_IsMoveActive(ov16_0223E008(v0->unk_00)) == 0) {
            BattleAnimSystem_FreeScriptData(ov16_0223E008(v0->unk_00));
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

    Heap_Free(v0->unk_08->unk_04->party);
    Heap_Free(v0->unk_08->unk_04);
    Heap_Free(v0->unk_08);
    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_02261DA8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D794 *v0 = (UnkStruct_ov16_0225D794 *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_Free(v0->unk_08->unk_04->party);
    Heap_Free(v0->unk_08->unk_04);
    Heap_Free(v0->unk_08);
    Heap_Free(param1);
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

    v1.category = v2 & 0xf;
    v1.target = (v2 & 0xf0) >> 8;

    ov16_02265A70(v0->unk_00, v0->unk_0D, v1);
    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_Free(v0->unk_08->unk_04->party);
    Heap_Free(v0->unk_08->unk_04);
    Heap_Free(v0->unk_08);
    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_02261E8C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D840 *v0 = (UnkStruct_ov16_0225D840 *)param1;
    PaletteData *v1 = BattleSystem_PaletteSys(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:

    {
        Window *v2 = BattleSystem_Window(v0->unk_00, 0);

        Window_FillTilemap(v2, 0xff);
        Window_LoadTiles(v2);
    }

        v0->unk_17 = ov16_0226CD08(ov16_0223E02C(v0->unk_00));
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 0, 7, 0x0);
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 0, 16, 0x0);
        v0->unk_0A++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            {
                int i;
                int v4 = 0;
                int v5;
                int v6, v7;
                Party *v8;
                Pokemon *v9, *v10;

                ov16_0223B384(v0->unk_00);

                v0->unk_04 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlePartyContext));
                v0->unk_04->party = Party_New(HEAP_ID_BATTLE);

                if (((BattleSystem_BattleType(v0->unk_00) & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) || (BattleSystem_BattleType(v0->unk_00) == ((BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI) | BATTLE_TYPE_FRONTIER))) {
                    if (BattleSystem_BattlerSlot(v0->unk_00, v0->unk_09) == 2) {
                        v6 = v0->unk_09;
                        v7 = BattleSystem_Partner(v0->unk_00, v0->unk_09);
                    } else {
                        v6 = BattleSystem_Partner(v0->unk_00, v0->unk_09);
                        v7 = v0->unk_09;
                    }

                    v9 = Pokemon_New(HEAP_ID_BATTLE);

                    for (i = 0; i < 6; i++) {
                        Party_AddPokemon(v0->unk_04->party, v9);
                    }

                    Heap_Free(v9);

                    for (i = 0; i < BattleSystem_PartyCount(v0->unk_00, v6); i++) {
                        v9 = BattleSystem_PartyPokemon(v0->unk_00, v6, v0->unk_1C[v6][i]);
                        v10 = Party_GetPokemonBySlotIndex(v0->unk_04->party, i * 2);
                        Pokemon_Copy(v9, v10);
                        v0->unk_04->pokemonPartySlots[i * 2] = v0->unk_1C[v6][i];
                    }

                    for (i = 0; i < BattleSystem_PartyCount(v0->unk_00, v7); i++) {
                        v9 = BattleSystem_PartyPokemon(v0->unk_00, v7, v0->unk_1C[v7][i]);
                        v10 = Party_GetPokemonBySlotIndex(v0->unk_04->party, i * 2 + 1);
                        Pokemon_Copy(v9, v10);
                        v0->unk_04->pokemonPartySlots[i * 2 + 1] = v0->unk_1C[v7][i];
                    }

                    if (BattleSystem_BattlerSlot(v0->unk_00, v0->unk_09) == 4) {
                        v0->unk_04->selectedPartyIndex = 1;
                    } else {
                        v0->unk_04->selectedPartyIndex = 0;
                    }
                } else {
                    if ((BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_DOUBLES) && ((BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_2vs2) == FALSE)) {
                        v5 = v0->unk_09 & 1;
                    } else {
                        v5 = v0->unk_09;
                    }

                    if (BattleSystem_BattlerSlot(v0->unk_00, v0->unk_09) == 4) {
                        v0->unk_04->selectedPartyIndex = 1;
                    } else {
                        v0->unk_04->selectedPartyIndex = 0;
                    }

                    v8 = BattleSystem_Party(v0->unk_00, v0->unk_09);

                    for (i = 0; i < Party_GetCurrentCount(v8); i++) {
                        v9 = BattleSystem_PartyPokemon(v0->unk_00, v5, v0->unk_1C[v5][i]);
                        Party_AddPokemon(v0->unk_04->party, v9);
                        v0->unk_04->pokemonPartySlots[i] = v0->unk_1C[v5][i];
                    }
                }

                v0->unk_04->battleSystem = v0->unk_00;
                v0->unk_04->heapID = HEAP_ID_BATTLE;
                v0->unk_04->battlePartyExited = 0;
                v0->unk_04->moveToLearn = v0->unk_10;
                v0->unk_04->doubleBattleFirstSelectedPartySlot = v0->unk_16;
                v0->unk_04->battlePartyMode = v0->unk_0B;
                v0->unk_04->selectedBattleBagItem = v0->unk_14;
                v0->unk_04->battler = v0->unk_09;
                v0->unk_04->isCursorEnabled = v0->unk_17;

                if ((v0->unk_18 & FlagIndex(v0->unk_09)) == 0) {
                    v0->unk_04->playerPokemonPartySlot = v0->unk_0C[v0->unk_09];
                } else {
                    v0->unk_04->playerPokemonPartySlot = 6;
                }

                if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_2vs2) {
                    v0->unk_04->partnerPokemonPartySlot = 6;
                } else if ((v0->unk_18 & FlagIndex(BattleSystem_Partner(v0->unk_00, v0->unk_09))) == 0) {
                    v0->unk_04->partnerPokemonPartySlot = v0->unk_0C[BattleSystem_Partner(v0->unk_00, v0->unk_09)];
                } else {
                    v0->unk_04->partnerPokemonPartySlot = 6;
                }

                BattlePartyTask_Start(v0->unk_04);
                v0->unk_0A++;
            }
        }
        break;
    case 2:
        if (v0->unk_04->battlePartyExited) {
            ov16_0223B430(v0->unk_00);
            ov16_0226CD10(ov16_0223E02C(v0->unk_00), v0->unk_04->isCursorEnabled);
            PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 7, 0, 0x0);
            PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 16, 0, 0x0);
            v0->unk_0A++;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            sub_02015738(ov16_0223E220(v0->unk_00), 0);

            if (v0->unk_04->selectedPartyIndex == 6) {
                ov16_02265B10(v0->unk_00, v0->unk_09, 0xff);
            } else {
                ov16_02265B10(v0->unk_00, v0->unk_09, 1 + v0->unk_04->pokemonPartySlots[v0->unk_04->selectedPartyIndex]);
            }

            ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_Free(v0->unk_04->party);
            Heap_Free(v0->unk_04);
            Heap_Free(param1);
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
    u32 battleType = BattleSystem_BattleType(v0->unk_00);
    v4 = v0->unk_09;

    if ((battleType & BATTLE_TYPE_TAG) || (battleType & BATTLE_TYPE_2vs2)) {
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

                if ((Pokemon_GetValue(v3, MON_DATA_HP, NULL)) && (v0->unk_0C[v4] != v1) && (v0->unk_0C[v5] != v1)) {
                    break;
                }
            }
        }
    }

    ov16_02265B10(v0->unk_00, v0->unk_09, 1 + v1);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_0226230C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D840 *v0 = (UnkStruct_ov16_0225D840 *)param1;

    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_Free(param1);
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

                if (Pokemon_GetValue(v3, MON_DATA_HP, NULL) == 0) {
                    ov16_02264730(v0->unk_00);
                }

                if (Pokemon_GetValue(v3, MON_DATA_SPECIES_OR_EGG, NULL) == SPECIES_EGG) {
                    ov16_02264730(v0->unk_00);
                }
            }
        }
    }

    ov16_02265B10(v0->unk_00, v0->unk_09, v1);
    ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_022623F0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D8AC *v0 = param1;
    BgConfig *v1 = BattleSystem_BGL(v0->unk_00);
    UnkStruct_ov16_02268A14 *v2 = ov16_0223E02C(v0->unk_00);
    int v3;
    Healthbar *v4;
    BattlerData *v5 = BattleSystem_BattlerData(v0->unk_00, v0->unk_0D);
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
                NARC *v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
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
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            v0->unk_0E = 3;
        }
        break;
    case 3:
        if (ov16_02269348(v2) == 1) {
            {
                NARC *v12 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v13 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

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
            Heap_Free(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_0226262C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D8AC *v0 = (UnkStruct_ov16_0225D8AC *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_0226264C(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D8AC *v0 = (UnkStruct_ov16_0225D8AC *)param1;

    ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_Free(param1);
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

    Heap_Free(param1);
    SysTask_Done(param0);
}

static void ov16_022626C0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225D9A8 *v0 = (UnkStruct_ov16_0225D9A8 *)param1;

    switch (v0->unk_6A) {
    case 0:
        if ((v0->unk_10.unk_0E_0) && (v0->unk_10.unk_4C == 0) && (PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_HIDE) == 0)) {
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
        ov12_022382BC(&v2, HEAP_ID_BATTLE);

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
            PokemonSpriteManager_HideShadows(ov16_0223E000(v0->unk_00));
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
            PokemonSpriteManager_ShowShadows(ov16_0223E000(v0->unk_00));
        }

        if ((v0->unk_10.unk_0E_0) && (v0->unk_10.unk_4C == 0) && (PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_HIDE) == 0)) {
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
        ov12_02238390(&v5, HEAP_ID_BATTLE);

        ov16_02266B78(v0->unk_00, NULL, &v6, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v6);
        v0->unk_04->unk_19C = 1;
    }
        v0->unk_6A++;
        break;
    case 10:
        ClearCommand(v0->unk_00, v0->unk_69, v0->unk_68);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
        BattleAnimSystem_ExecuteScript(v0->unk_0C);

        if (BattleAnimSystem_IsMoveActive(v0->unk_0C) == 0) {
            BattleAnimSystem_FreeScriptData(v0->unk_0C);
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
            v1 = PokemonSprite_GetAttribute(v0->unk_04, MON_SPRITE_HIDE);
            v1 ^= 1;
            PokemonSprite_SetAttribute(v0->unk_04, MON_SPRITE_HIDE, v1);
        } else {
            v0->unk_0A--;
        }
    } else {
        v1 = 0;
        PokemonSprite_SetAttribute(v0->unk_04, MON_SPRITE_HIDE, v1);
        ClearCommand(v0->unk_00, v0->unk_08, 23);
        Heap_Free(param1);
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
        Sound_PlayEffect(SEQ_SE_DP_EXP);
        Healthbar_CalcExp(v0, v0->expReward);
        v0->state++;
    case 1:
        if (v0->unk_4E < 8) {
            v0->unk_4E++;
        }

        v1 = ov16_02267560(v0);

        if (v1 == -1) {
            if (v0->unk_4E >= 8) {
                Sound_StopEffect(1803, 0);
                v0->state = 100;
            } else {
                v0->state++;
            }
        }
        break;
    case 2:
        v0->unk_4E++;

        if (v0->unk_4E >= 8) {
            Sound_StopEffect(1803, 0);
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
    BattleAnimSystem *v1 = ov16_0223E008(v0->unk_00);
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
        ov12_022382BC(&v5, HEAP_ID_BATTLE);

        ov16_02266B78(v0->unk_00, NULL, &v6, 1, 16, v0->unk_65, v0->unk_65, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v6);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_66++;
        break;
    case 1:
    case 3:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
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

        Species_PlayDelayedCry(BattleSystem_ChatotVoice(v0->unk_00, v0->unk_65), 5, v0->unk_68, v0->unk_6B, v7, 127, v0->unk_72, 5, 0);
        v0->unk_66++;
    }
    case 5:
        if (Sound_IsPokemonCryPlaying() == 0) {
            v0->unk_66++;
        }
        break;
    case 6:
        if (v0->unk_67 == 2) {
            Sound_PlayPannedEffect(SEQ_SE_DP_POKE_DEAD3, 117);
        } else {
            Sound_PlayPannedEffect(SEQ_SE_DP_POKE_DEAD3, -117);
        }

        if (PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_SHADOW_HEIGHT) > 0) {
            v0->unk_66 = 7;
        } else {
            v0->unk_66 = 8;
        }
        break;
    case 7:
        v3 = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_SHADOW_HEIGHT);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_SHADOW_HEIGHT, v3);

        if (v3) {
            break;
        }

        v0->unk_66++;
    case 8:
        v3 = LoadPokemonSpriteYOffset(v0->unk_68, v0->unk_6A, v0->unk_67, v0->unk_6B, v0->unk_6C);
        v3 = 80 - v3;
        PokemonSprite_SetPartialDraw(v0->unk_08, 0, 0, 80, v3);
        v0->unk_66++;
        break;
    case 9:
        v2 = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER);
        v2 += 8;
        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER, v2);
        v3 = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_DRAW_HEIGHT);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_DRAW_HEIGHT, v3);

        if (v3 == 0) {
            PokemonSprite_Delete(v0->unk_08);
            v0->unk_66++;
        }
        break;
    case 10:
        ClearCommand(v0->unk_00, v0->unk_65, v0->unk_64);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02262D28(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DC7C *v0 = (UnkStruct_ov16_0225DC7C *)param1;
    PaletteData *v1 = BattleSystem_PaletteSys(v0->unk_00);
    PokemonSpriteManager *v2 = ov16_0223E000(v0->unk_00);

    switch (v0->unk_06) {
    case 0:
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        PaletteData_StartFade(v1, 0x1 | 0x2 | 0x4 | 0x8, 0xffff, 1, 0, 16, 0x0);
        PokemonSpriteManager_StartFadeAll(v2, 0, 16, 0, 0x0);
        Sound_FadeOutBGM(0, 16);
        v0->unk_06++;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            v0->unk_06++;
        }
        break;
    case 2:
        ClearCommand(v0->unk_00, v0->unk_05, v0->unk_04);
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    }
}

static void ov16_02262DC4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225DCB0 *v0 = (UnkStruct_ov16_0225DCB0 *)param1;
    BattleAnimSystem *v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_62) {
    case 0:
        if (v0->unk_04->unk_20) {
            PokemonSprite_SetAttribute(v0->unk_04->unk_20, MON_SPRITE_HIDE, v0->unk_63);

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
        ov12_02238390(&v3, HEAP_ID_BATTLE);

        ov16_02266B78(v0->unk_00, NULL, &v4, 1, 16, v0->unk_61, v0->unk_61, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
        v0->unk_04->unk_19C = 1;
    }
        v0->unk_62++;
        break;
    case 2:
    case 4:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            v0->unk_62++;
        }
        break;
    default:
        ClearCommand(v0->unk_00, v0->unk_61, v0->unk_60);
        Heap_Free(param1);
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
        Sound_PlayEffect(SEQ_SE_DP_EXPMAX);
        v0->unk_0A++;
        break;
    case 1:
        if (v0->unk_0B == 1) {
            ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_Free(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void WaitForBattleMessagePrint(SysTask *task, void *data)
{
    BattleMessageWaitTask *waitTask = data;

    if (Battle_GetWaitDial(waitTask->battleSys)) {
        DestroyWaitDial(Battle_GetWaitDial(waitTask->battleSys));
        Battle_SetWaitDial(waitTask->battleSys, NULL);
    }

    if (Text_IsPrinterActive(waitTask->msgIdx) == FALSE) {
        ClearCommand(waitTask->battleSys, waitTask->battler, waitTask->command);
        Heap_Free(data);
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
            Heap_Free(param1);
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
    BgConfig *v1;
    PaletteData *v2;
    int v3;
    int v4;

    v1 = BattleSystem_BGL(v0->unk_00);
    v2 = BattleSystem_PaletteSys(v0->unk_00);
    v3 = BattleSystem_Terrain(v0->unk_00);
    v4 = Unk_ov16_0226F1D0[BattleSystem_Background(v0->unk_00)];

    v0->unk_15++;

    switch (v0->unk_14) {
    case 0: {
        UnkStruct_ov12_02237F38 v5;

        v0->unk_04 = ov12_02237EFC(HEAP_ID_BATTLE, NULL);

        v5.unk_00 = Unk_ov16_0226F31C[v3];
        v5.unk_04 = 1;

        v0->unk_08[0] = ov12_02237F38(v0->unk_04, &v5);

        v5.unk_00 = Unk_ov16_0226F31C[v3] + 1;
        v5.unk_04 = 1;

        v0->unk_08[1] = ov12_02237F38(v0->unk_04, &v5);

        ov12_02238004(v0->unk_08[0]);
        Sound_PlayEffect(SEQ_SE_DP_PASA2);

        v0->unk_14 = 1;
    }

    case 1:

        if (v0->unk_15 == 10) {
            PaletteData_StartFade(v2, 0x1, 0xf3ff, 0, 0, 16, v4);
            PaletteData_StartFade(v2, 0x4, 0x3fff, 0, 0, 16, v4);
        }

        if ((v0->unk_15 >= 10) && (v0->unk_16 < 16)) {
            u16 i, v7;
            u16 *v8;

            v0->unk_16++;

            if (v0->unk_16 > 16) {
                v0->unk_16 = 16;
            }

            v8 = PaletteData_GetFadedBuffer(v2, 1);

            for (i = 0; i < 256; i++) {
                v7 = (0 + ((0x1f - 0) * v0->unk_16 >> 4));
                v8[i] = v7 | (v7 << 5) | (v7 << 10);
            }
        }

        if (v0->unk_15 == 20) {
            ov12_02238004(v0->unk_08[1]);
        }

        if (v0->unk_15 == 23) {
            Sound_PlayEffect(SEQ_SE_DP_PASA3);
        }

        if (v0->unk_15 == 28) {
            MI_CpuCopy16(ov16_0223F204(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 0), 0x20 * 7);

            if (BattleSystem_BattleType(v0->unk_00) == BATTLE_TYPE_AI_PARTNER) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
            } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_DOUBLES) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 7);
            } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_TRAINER) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
            } else {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 4);
            }

            PaletteData_StartFade(v2, 0x1, 0xf3ff, 0, 16, 0, v4);
            PaletteData_StartFade(v2, 0x4, 0x3fff, 0, 16, 0, v4);
            PaletteData_StartFade(v2, 0x2 | 0x8, 0xffff, 0, 16, 0, v4);
        }

        if (v0->unk_15 >= 50) {
            PaletteData_StartFade(v2, 0x1, 0xc00, 0, 16, 0, 0x0);
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
        Heap_Free(param1);
        SysTask_Done(param0);
        break;
    case 4:
        ov12_02237F98(v0->unk_04);
        ov12_02237F74(v0->unk_04);
        v0->unk_14++;
    case 5:
        MI_CpuCopy16(ov16_0223F204(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 0), 0x20 * 7);

        if (BattleSystem_BattleType(v0->unk_00) == BATTLE_TYPE_AI_PARTNER) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
        } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_DOUBLES) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 7);
        } else if (BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_TRAINER) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
        } else {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 4);
        }

        PaletteData_StartFade(v2, 0x1, 0xffff, 0, 0, 0, 0x7fff);
        PaletteData_StartFade(v2, 0x4, 0x3fff, 0, 0, 0, 0xffff);
        PaletteData_StartFade(v2, 0x2 | 0x8, 0xffff, 0, 0, 0, 0x7fff);
        v0->unk_14 = 3;
        break;
    }
}

static void ov16_022633A4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0225E0BC *v0 = (UnkStruct_ov16_0225E0BC *)param1;
    PaletteData *v1 = BattleSystem_PaletteSys(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 0, 16, 0x0);
        v0->unk_0A++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            ov16_0223B384(v0->unk_00);

            v0->unk_04 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlePartyContext));
            v0->unk_04->party = BattleSystem_Party(v0->unk_00, v0->unk_09);
            v0->unk_04->battleSystem = v0->unk_00;
            v0->unk_04->heapID = HEAP_ID_BATTLE;
            v0->unk_04->selectedPartyIndex = v0->unk_0E;
            v0->unk_04->moveToLearn = v0->unk_0C;
            v0->unk_04->battlePartyExited = 0;
            v0->unk_04->doubleBattleFirstSelectedPartySlot = 0;
            v0->unk_04->battlePartyMode = BATTLE_PARTY_MODE_LEARN_MOVE;
            v0->unk_04->selectedBattleBagItem = 0;
            v0->unk_04->battler = v0->unk_09;
            v0->unk_04->isCursorEnabled = 0;

            BattlePartyTask_Start(v0->unk_04);
            v0->unk_0A++;
        }
        break;
    case 2:
        if (v0->unk_04->battlePartyExited) {
            ov16_0223B430(v0->unk_00);
            PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 16, 0, 0x0);
            v0->unk_0A++;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            if (v0->unk_04->selectedMoveSlot == 4) {
                ov16_02265B10(v0->unk_00, v0->unk_09, 0xff);
            } else {
                ov16_02265B10(v0->unk_00, v0->unk_09, v0->unk_04->selectedMoveSlot + 1);
            }

            ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);

            Heap_Free(v0->unk_04);
            Heap_Free(param1);
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
            v1 = PokemonSprite_GetAttribute(v0->unk_04, MON_SPRITE_MOSAIC_INTENSITY);

            if (v1 > v0->unk_0B) {
                v1--;
            } else if (v1 < v0->unk_0B) {
                v1++;
            }

            PokemonSprite_SetAttribute(v0->unk_04, MON_SPRITE_MOSAIC_INTENSITY, v1);

            if (v1 == v0->unk_0B) {
                v0->unk_0A++;
            }
        } else {
            v0->unk_0C++;
        }
        break;
    case 1:
        ClearCommand(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_Free(param1);
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

        v3 = PartyGauge_Show(v0->status, v1, v4, v5, BattleSystem_GetSpriteSystem(v0->battleSys), BattleSystem_GetSpriteManager(v0->battleSys));
        BattleSystem_SetPartyGauge(v0->battleSys, v1, v3);
    }
        v0->state++;
        break;
    case 1:
        if (PartyGauge_ShowIsDone(BattleSystem_GetPartyGauge(v0->battleSys, v1)) == 1) {
            v0->state++;
        }
        break;
    default:
        ClearCommand(v0->battleSys, v0->battler, v0->command);
        Heap_Free(param1);
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

    v2 = BattleSystem_GetPartyGauge(v0->battleSys, v1);

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
            BattleSystem_SetPartyGauge(v0->battleSys, v1, NULL);
            v0->state++;
        }
        break;
    default:
        ClearCommand(v0->battleSys, v0->battler, v0->command);
        Heap_Free(param1);
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
        v0->unk_04->unk_88 = ov12_022234F8(v0->unk_00, HEAP_ID_BATTLE, v0->unk_0D);
        v0->unk_0E++;
        break;
    default:
        ClearCommand(v0->unk_00, v0->unk_0D, v0->unk_0C);
        Heap_Free(param1);
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

    Heap_Free(param1);
    SysTask_Done(param0);
}

void ov16_02263730(BattleSystem *battleSys, BattlerData *param1)
{
    u32 battleType = BattleSystem_BattleType(battleSys);
    u32 v1 = BattleSystem_BattleStatus(battleSys);

    if (battleType & BATTLE_TYPE_AI) {
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
    } else if ((battleType & (BATTLE_TYPE_2vs2 | BATTLE_TYPE_FRONTIER)) == (BATTLE_TYPE_2vs2 | BATTLE_TYPE_FRONTIER)) {
        if (param1->battlerType & 0x1) {
            if (ov16_0223ED60(battleSys)) {
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
        } else if (param1->battlerType != BattleSystem_BattlerSlot(battleSys, ov16_0223F6E4(battleSys) * 2)) {
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
    } else if (battleType & BATTLE_TYPE_2vs2) {
        if (v1 & 0x10) {
            param1->unk_00.unk_00 = &ov16_02260BAC;
            param1->unk_00.unk_04 = &ov16_02260E98;
            param1->unk_00.unk_08 = &ov16_0226110C;
            param1->unk_00.unk_0C = &ov16_02261DE0;
            param1->unk_00.unk_10 = &ov16_0226232C;
            param1->unk_00.unk_14 = &ov16_0226266C;
            param1->bootState = 0x0;
        } else if (param1->battlerType != BattleSystem_BattlerSlot(battleSys, ov16_0223F6E4(battleSys))) {
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
    } else if (battleType & BATTLE_TYPE_LINK) {
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
    } else if (battleType & BATTLE_TYPE_PAL_PARK) {
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
    } else if (battleType & BATTLE_TYPE_SAFARI) {
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

PokemonSprite *ov16_02263AFC(BattlerData *param0)
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

    ManagedSprite_SetDrawFlag(param0->unk_18, param1);
}

static PokemonSprite *ov16_02263B30(BattleSystem *battleSys, PokemonSpriteManager *param1, PokemonSpriteTemplate *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, SpriteAnimFrame *param11, PokemonSpriteCallback *param12)
{
    PokemonSprite *v0;
    u8 *v1 = ov16_0223F2B8(ov16_0223E0C8(battleSys), param10);
    int v2;
    int face;

    v2 = BattleSystem_BattlerSlot(battleSys, param10);

    if (v2 & 0x1) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    CharacterSprite_LoadPokemonSprite(param2->narcID, param2->character, HEAP_ID_BATTLE, v1, param2->personality, FALSE, face, param2->spindaSpots);
    PokemonSpriteData_SetNarcID(ov16_0223E0C8(battleSys), param10, param2->narcID);
    PokemonSpriteData_SetPalette(ov16_0223E0C8(battleSys), param10, param2->palette);
    PokemonSpriteData_SetYOffset(ov16_0223E0C8(battleSys), param10, param6);

    v0 = PokemonSpriteManager_CreateSpriteAtIndex(param1, param2, param3, param4 + param6, param5, param10, param10, param11, param12);

    if (v2 & 0x1) {
        if (v2 > 1) {
            v2 = v2 >> 1;
        }

        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_PLTT_SLOT, v2);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_SIZE, param9);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_Y, (param4 + param6) + (36 - param6));
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_X_OFFSET, param8);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_Y_OFFSET, 36 - param6);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_HEIGHT, param7);
    }

    return v0;
}

static void ov16_02263C1C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C3F8 *param2, BattleMessage *param3)
{
    if (param1->battlerType & 0x1) {
        if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) {
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
        if (((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) == FALSE) && ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE)) {
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

static void ov16_02263CF0(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C40C *param2, BattleMessage *param3)
{
    if (param1->battlerType & 0x1) {
        if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == 0) {
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
        if (((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) == 0) && ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE)) {
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

static void ov16_02263DD0(BattleSystem *battleSys, BattlerData *unused, BattleMessage *param2)
{
    u32 battleType;
    int battlerType1;
    int battlerType2;

    battleType = BattleSystem_BattleType(battleSys);

    if (battleType & BATTLE_TYPE_DOUBLES) {
        battlerType1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        battlerType2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
    } else {
        battlerType1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        battlerType2 = battlerType1;
    }

    if (battleType & BATTLE_TYPE_LINK) {
        if (battleType & BATTLE_TYPE_FRONTIER) {
            param2->id = 992;
            param2->tags = 59;
            param2->params[0] = battlerType1;
            param2->params[1] = battlerType1;
            param2->params[2] = battlerType2;
            param2->params[3] = battlerType2;
        } else if (battleType & BATTLE_TYPE_2vs2) {
            param2->id = 971;
            param2->tags = 26;
            param2->params[0] = battlerType1;
            param2->params[1] = battlerType2;
        } else {
            param2->id = 970;
            param2->tags = 8;
            param2->params[0] = battlerType1;
        }
    } else {
        if ((battleType & BATTLE_TYPE_TAG) || (battleType & BATTLE_TYPE_2vs2)) {
            param2->id = 992;
            param2->tags = 59;
            param2->params[0] = battlerType1;
            param2->params[1] = battlerType1;
            param2->params[2] = battlerType2;
            param2->params[3] = battlerType2;
        } else {
            param2->id = 969;
            param2->tags = 30;
            param2->params[0] = battlerType1;
            param2->params[1] = battlerType1;
        }
    }
}

static void ov16_02263E7C(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C430 *param2, BattleMessage *param3)
{
    u32 battleType;
    int v1;
    int v2;

    battleType = BattleSystem_BattleType(battleSys);

    if (param1->battlerType & 0x1) {
        if (battleType & BATTLE_TYPE_DOUBLES) {
            v1 = param1->battler;
            v2 = BattleSystem_Partner(battleSys, param1->battler);
        } else {
            v1 = param1->battler;
            v2 = v1;
        }

        if (battleType & BATTLE_TYPE_LINK) {
            if (battleType & BATTLE_TYPE_FRONTIER) {
                param3->id = 991;
                param3->tags = 60;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
                param3->params[3] = v2;
                param3->params[4] = v2;
                param3->params[5] = v2 | (param2->unk_04[v2] << 8);
            } else if (battleType & BATTLE_TYPE_2vs2) {
                param3->id = 976;
                param3->tags = 56;
                param3->params[0] = v1;
                param3->params[1] = v1 | (param2->unk_04[v1] << 8);
                param3->params[2] = v2;
                param3->params[3] = v2 | (param2->unk_04[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
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
            if ((battleType & BATTLE_TYPE_TAG) || (battleType & BATTLE_TYPE_2vs2)) {
                param3->id = 991;
                param3->tags = 60;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
                param3->params[3] = v2;
                param3->params[4] = v2;
                param3->params[5] = v2 | (param2->unk_04[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
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
        if (battleType & BATTLE_TYPE_LINK) {
            {
                u8 v3 = ov16_0223F6E4(battleSys);

                if (battleType & BATTLE_TYPE_2vs2) {
                    switch (ov16_0223F6F0(battleSys, v3)) {
                    case 0:
                    case 3:
                        v1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                        v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                        break;
                    case 1:
                    case 2:
                        v1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                        v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                        break;
                    }
                } else if (battleType & BATTLE_TYPE_DOUBLES) {
                    v1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                    v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                } else {
                    v1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_SOLO_PLAYER);
                    v2 = v1;
                }
            }
        } else if (battleType & BATTLE_TYPE_2vs2) {
            v1 = BattleSystem_Partner(battleSys, param1->battler);
            v2 = param1->battler;
        } else if (battleType & BATTLE_TYPE_DOUBLES) {
            v1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
            v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            v1 = param1->battler;
            v2 = v1;
        }

        if (battleType & BATTLE_TYPE_LINK) {
            if (battleType & BATTLE_TYPE_2vs2) {
                param3->id = 977;
                param3->tags = 49;
                param3->params[0] = v1;
                param3->params[1] = v1 | (param2->unk_04[v1] << 8);
                param3->params[2] = v2 | (param2->unk_04[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
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
            if (battleType & BATTLE_TYPE_2vs2) {
                param3->id = 993;
                param3->tags = 57;
                param3->params[0] = v1;
                param3->params[1] = v1;
                param3->params[2] = v1 | (param2->unk_04[v1] << 8);
                param3->params[3] = v2 | (param2->unk_04[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
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

static void ov16_022641B4(BattleSystem *battleSys, BattlerData *param1, BattleMessage *param2)
{
    u32 battleType;
    int v1;
    int v2;
    int v3;

    battleType = BattleSystem_BattleType(battleSys);
    v3 = BattleSystem_ResultMask(battleSys);

    if (battleType & BATTLE_TYPE_DOUBLES) {
        v1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
    } else {
        v1 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        v2 = v1;
    }

    switch (v3) {
    case 0x1:
        if (battleType & BATTLE_TYPE_2vs2) {
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
        if (battleType & BATTLE_TYPE_2vs2) {
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
        if (battleType & BATTLE_TYPE_2vs2) {
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

static void ov16_02264270(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225C9F0 *param2, BattleMessage *param3)
{
    int i;
    int v1 = 0;
    int v2 = 0;

    for (i = 0; i < BattleSystem_MaxBattlers(battleSys); i++) {
        if (param2->unk_01 & FlagIndex(i)) {
            if (Battler_Side(battleSys, i)) {
                v2++;
            } else {
                v1++;
            }
        }
    }

    if ((v1) && (v2)) {
        param3->id = 781;
        param3->tags = 0;
        BattleSystem_SetResultFlag(battleSys, 0x3 | 0x80 | 0x40);
    } else if (v1) {
        param3->id = 781;
        param3->tags = 0;
        BattleSystem_SetResultFlag(battleSys, 0x2 | 0x80 | 0x40);
    } else {
        if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) {
            param3->id = 792;
            param3->tags = 26;
            param3->params[0] = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
            param3->params[1] = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
        } else if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
            param3->id = 791;
            param3->tags = 8;
            param3->params[0] = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        } else {
            param3->id = 791;
            param3->tags = 8;
            param3->params[0] = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        }

        BattleSystem_SetResultFlag(battleSys, 0x1 | 0x80 | 0x40);
    }
}

static void ov16_02264360(BattleSystem *battleSys, BattlerData *param1, BattleMessage *param2)
{
    param2->id = 956;
    param2->tags = 8;

    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) {
        if (ov16_0223F6F0(battleSys, ov16_0223F6E4(battleSys))) {
            param2->params[0] = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            param2->params[0] = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
        }
    } else {
        param2->params[0] = param1->battler;
    }

    BattleSystem_SetResultFlag(battleSys, 0x2 | 0x80 | 0x40);
}

static ManagedSprite *ov16_022643B8(BattleSystem *battleSys, int param1, int param2, int param3, s16 param4, s16 param5)
{
    SpriteSystem *v0;
    SpriteManager *v1;
    PaletteData *v2;
    ManagedSprite *v3;
    int v4;

    v0 = BattleSystem_GetSpriteSystem(battleSys);
    v1 = BattleSystem_GetSpriteManager(battleSys);
    v2 = BattleSystem_PaletteSys(battleSys);

    if (param1 & 0x1) {
        v4 = 2;
    } else {
        v4 = 0;
    }

    v3 = sub_02076994(v0, v1, v2, param4, param5, param2, v4, param3, 5);

    return v3;
}

static void ov16_02264408(BattleSystem *battleSys, BattlerData *param1, BattleAnimSystem *battleAnimSystem, UnkStruct_ov16_02265BBC *param3)
{
    BattleAnimBattlerContext battlerContext;
    int i;
    int move;

    if (param3->unk_4C == 0) {
        battlerContext.moveArcID = 8;
        move = param3->unk_02;
    } else {
        battlerContext.moveArcID = 63;
        move = param3->unk_50;
    }

    battlerContext.bgConfig = BattleSystem_BGL(battleSys);
    battlerContext.paletteData = BattleSystem_PaletteSys(battleSys);
    battlerContext.spriteSystem = BattleSystem_GetSpriteSystem(battleSys);

    for (i = 0; i < 4; i++) {
        battlerContext.pokemonSpriteData[i] = ov16_0223F2AC(battleSys, i);
        battlerContext.battlerSpecies[i] = param3->unk_18[i];
        battlerContext.battlerGenders[i] = param3->unk_20[i];
        battlerContext.battlerShinyFlags[i] = param3->unk_24[i];
        battlerContext.battlerForms[i] = param3->unk_28[i];
        battlerContext.battlerPersonalities[i] = param3->unk_2C[i];
        battlerContext.battlerMoveEffects[i] = param3->unk_3C[i];
    }

    ov16_0223F87C(battleSys, &(battlerContext.battlerTypes[0]));
    ov16_0223F8AC(battleSys, &(battlerContext.pokemonSprites[0]));

    battlerContext.battleType = BattleSystem_BattleType(battleSys);
    battlerContext.chatotCry = BattleSystem_ChatotVoice(battleSys, param1->battler);
    battlerContext.bgTiles = ov16_0223F1E8(battleSys);
    battlerContext.bgPaletteBuffer = ov16_0223F1F0(battleSys);
    battlerContext.battleBgRef.narcID = 7;
    battlerContext.battleBgRef.tilesNarcMemberIdx = 3 + BattleSystem_Background(battleSys);
    battlerContext.battleBgRef.paletteNarcMemberIdx = 172 + BattleSystem_Background(battleSys) * 3 + ov16_0223EC04(battleSys);
    battlerContext.battleBgRef.tilemapNarcMemberIdx = 2;
    battlerContext.battleBgRef.paletteDestStart = 0;
    battlerContext.battleBgRef.paletteSrcSize = 8;

    BattleAnimSystem_StartMove(battleAnimSystem, param3, move, &battlerContext);
}

static void ov16_02264530(BattleSystem *battleSys, UnkStruct_ov16_02265BBC *param1, UnkStruct_ov12_022380DC *param2, int param3)
{
    int i;

    param2->unk_00 = param3;
    param2->unk_04 = param3;

    for (i = 0; i < 4; i++) {
        param2->pokemonSpriteData[i] = ov16_0223F2AC(battleSys, i);
        param2->species[i] = param1->unk_18[i];
        param2->genders[i] = param1->unk_20[i];
        param2->shinyFlags[i] = param1->unk_24[i];
        param2->forms[i] = param1->unk_28[i];
        param2->personalities[i] = param1->unk_2C[i];
    }

    ov16_0223F87C(battleSys, &(param2->types[0]));
    ov16_0223F8AC(battleSys, &(param2->sprites[0]));
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

static BOOL ov16_02264650(UnkStruct_ov16_02264650_1 *param0, ManagedSprite *param1)
{
    UnkStruct_ov16_02264650 *v0;
    int v1;
    BOOL v2 = 0;

    v1 = ManagedSprite_GetUserAttrForCurrentAnimFrame(param0->unk_08);

    switch (v1) {
    case 1:
        if (param0->unk_12_0 == 0) {
            param0->unk_12_0 = 1;
            v0 = (UnkStruct_ov16_02264650 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_02264650));
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
            ManagedSprite_SetAnimationFrame(param0->unk_08, 0);
            ManagedSprite_SetAnim(param0->unk_08, (v1 & 0xff) - 1);
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
        BrightnessController_StartTransition(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), BRIGHTNESS_MAIN_SCREEN);
        v0->unk_00++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) {
            BrightnessController_StartTransition(4, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), BRIGHTNESS_MAIN_SCREEN);
            v0->unk_00++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) {
            Heap_Free(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov16_02264730(BattleSystem *battleSys)
{
    BattleSystem_SetStopRecording(battleSys, 1);
    Battle_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
}

static void ov16_0226474C(BattleSystem *battleSys)
{
    BattleSystem_SetStopRecording(battleSys, 2);
    Battle_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
}

static u8 ov16_02264768(BattleSystem *battleSys, u8 param1, u8 param2)
{
    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) {
        if ((TrainerInfo_GameCode(BattleSystem_TrainerInfo(battleSys, param1)) == 0) && (param2 <= 1)) {
            param2 += 103;
        }
    }

    return param2;
}
