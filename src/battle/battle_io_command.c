#include "battle/battle_io_command.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_io.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_io.h"

#include "battle/battle_display.h"
#include "battle/battle_io.h"
#include "battle/battle_message.h"
#include "battle/healthbar.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_02264798.h"
#include "battle/ov16_0226871C.h"
#include "battle/party_gauge.h"
#include "battle/struct_ov16_0223C2C0.h"
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
#include "battle/struct_ov16_0225C684.h"
#include "battle/struct_ov16_0225C988.h"
#include "battle/struct_ov16_0225C9F0.h"
#include "battle/struct_ov16_0225CA14.h"
#include "battle/struct_ov16_0225CA4C.h"
#include "battle/struct_ov16_0225CA60.h"
#include "battle/struct_ov16_02264A8C.h"
#include "battle/struct_ov16_02264EF8.h"
#include "battle/struct_ov16_02265050.h"
#include "battle/struct_ov16_02265124.h"
#include "battle/struct_ov16_02265154.h"
#include "battle/struct_ov16_022651A8.h"
#include "battle/struct_ov16_022656F0.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022662FC.h"
#include "battle/struct_ov16_02266498.h"
#include "battle/struct_ov16_022664F8.h"
#include "battle/struct_ov16_022666BC.h"
#include "battle/struct_ov16_02266A38.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle_anim/ov12_02235E94.h"
#include "battle_anim/ov12_022380BC.h"
#include "battle_anim/struct_ov12_02237728.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "flags.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"

typedef void (*UnkFuncPtr_ov16_0226F068)(BattleSystem *, BattlerData *);

BattlerData *ov16_0225BFFC(BattleSystem *battleSys, UnkStruct_ov16_0223C2C0 *param1);
void ov16_0225C0DC(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225C104(BattleSystem *battleSys, BattlerData *param1, int param2);
void ov16_0225C038(BattleSystem *battleSys, BattlerData *param1, int param2, int param3);
static void ov16_0225C138(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C13C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C168(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C17C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C190(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C1A4(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C1B8(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C1CC(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C1F0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C204(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C218(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C228(BattleSystem *battleSys, BattlerData *param1);
static void BtlIOCmd_SlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C260(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C288(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C29C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C2B0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C2C4(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C2D8(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C2EC(BattleSystem *battleSys, BattlerData *param1);
static void BtlIOCmd_PrintBattleMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C314(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C328(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C35C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C370(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C384(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C398(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C3AC(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C3BC(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C3D0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C3E4(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C3F8(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C40C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C420(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C430(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C444(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C454(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C468(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C47C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C558(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C5B0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C5E0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C65C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C670(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C684(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C77C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C79C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C840(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C854(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C868(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C8A4(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C8E0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C91C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C940(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C988(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C9AC(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C9C0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C9D0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C9E0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225C9F0(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225CA14(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225CA38(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225CA4C(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225CA60(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225CA74(BattleSystem *battleSys, BattlerData *param1);
static void ov16_0225CB80(BattleSystem *battleSys, BattlerData *param1);
static void ZeroDataBuffer(BattlerData *param0);

extern const u8 Unk_ov16_0226F174[];

BattlerData *ov16_0225BFFC(BattleSystem *battleSys, UnkStruct_ov16_0223C2C0 *param1)
{
    BattlerData *v0;
    int v1;

    v0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlerData));
    MI_CpuClearFast(v0, sizeof(BattlerData));

    v0->battler = param1->unk_00;
    v0->battlerType = param1->unk_01;
    v0->unk_1A0 = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_BATTLE);

    return v0;
}

void ov16_0225C038(BattleSystem *battleSys, BattlerData *param1, int param2, int param3)
{
    BallThrow v0;
    s16 v1, v2;

    if (BattleSystem_BattleType(battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    if ((param1->battlerType & 0x1) && ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TRAINER) == FALSE)) {
        return;
    }

    v0.type = Unk_ov16_0226F174[param1->battlerType];
    v0.heapID = HEAP_ID_BATTLE;
    v0.mode = 4;
    v0.target = param1->battler;
    v0.ballID = param2;
    v0.cellActorSys = BattleSystem_GetSpriteSystem(battleSys);
    v0.paletteSys = BattleSystem_PaletteSys(battleSys);
    v0.surface = 0;
    v0.bgPrio = 1;

    param1->unk_84 = ov12_02237728(&v0);

    ov12_02237E34(param1->unk_84, 100);
    ov12_02237E40(param1->unk_84, 2);
    ov12_02237E0C(param1->unk_84, 0);
    ov12_02237E30(param1->unk_84, 0);
}

static const UnkFuncPtr_ov16_0226F068 Unk_ov16_0226F068[] = {
    ov16_0225C138,
    ov16_0225C13C,
    ov16_0225C168,
    ov16_0225C17C,
    ov16_0225C190,
    ov16_0225C1A4,
    ov16_0225C1B8,
    ov16_0225C1CC,
    ov16_0225C1F0,
    ov16_0225C204,
    ov16_0225C218,
    ov16_0225C228,
    [BTLIOCMD_SLIDE_HEALTHBAR_IN] = BtlIOCmd_SlideHealthbarIn,
    [BTLIOCMD_SLIDE_HEALTHBAR_OUT] = BtlIOCmd_SlideHealthbarOut,
    ov16_0225C260,
    ov16_0225C288,
    ov16_0225C29C,
    ov16_0225C2B0,
    ov16_0225C2C4,
    ov16_0225C2D8,
    ov16_0225C2EC,
    [BTLIOCMD_PRINT_MESSAGE] = BtlIOCmd_PrintBattleMessage,
    ov16_0225C314,
    ov16_0225C328,
    ov16_0225C35C,
    ov16_0225C370,
    ov16_0225C384,
    ov16_0225C398,
    ov16_0225C3AC,
    ov16_0225C3BC,
    ov16_0225C3D0,
    ov16_0225C3E4,
    ov16_0225C3F8,
    ov16_0225C40C,
    ov16_0225C420,
    ov16_0225C430,
    ov16_0225C444,
    ov16_0225C454,
    ov16_0225C468,
    ov16_0225C47C,
    ov16_0225C558,
    ov16_0225C5B0,
    ov16_0225C5E0,
    ov16_0225C65C,
    ov16_0225C670,
    ov16_0225C684,
    ov16_0225C77C,
    ov16_0225C79C,
    [BTLIOCMD_SHOW_BATTLE_START_PARTY_GAUGE] = ov16_0225C840,
    [BTLIOCMD_HIDE_BATTLE_START_PARTY_GAUGE] = ov16_0225C854,
    [BTLIOCMD_SHOW_PARTY_GAUGE] = ov16_0225C868,
    [BTLIOCMD_HIDE_PARTY_GAUGE] = ov16_0225C8A4,
    [BTLIOCMD_LOAD_PARTY_GAUGE_GRAPHICS] = ov16_0225C8E0,
    [BTLIOCMD_FREE_PARTY_GAUGE_GRAPHICS] = ov16_0225C91C,
    ov16_0225C940,
    ov16_0225C988,
    ov16_0225C9AC,
    ov16_0225C9C0,
    ov16_0225C9D0,
    ov16_0225C9E0,
    ov16_0225C9F0,
    ov16_0225CA14,
    ov16_0225CA38,
    ov16_0225CA4C,
    ov16_0225CA60,
    ov16_0225CA74,
    ov16_0225CB80
};

void ov16_0225C0DC(BattleSystem *battleSys, BattlerData *param1)
{
    if (param1->data[0]) {
        param1->unk_1A4 = 0;
        Unk_ov16_0226F068[param1->data[0]](battleSys, param1);
    }
}

void ov16_0225C104(BattleSystem *battleSys, BattlerData *param1, int param2)
{
    if (param2 != 2) {
        ov16_02267360(&param1->healthbar);
    }

    if (param1->unk_18) {
        Sprite_DeleteAndFreeResources(param1->unk_18);
    }

    ov16_022647D8(param1);

    NARC_dtor(param1->unk_1A0);
    Heap_Free(param1);
}

static void ov16_0225C138(BattleSystem *battleSys, BattlerData *param1)
{
    return;
}

static void ov16_0225C13C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02264A8C *v0 = (UnkStruct_ov16_02264A8C *)&param1->data[0];

    ov16_0223F4F4(battleSys, v0->unk_04);
    ov16_0225CBB8(battleSys, param1);
    ClearCommand(battleSys, param1->battler, 1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C168(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C168 *v0 = (UnkStruct_ov16_0225C168 *)&param1->data[0];

    ov16_0225CBDC(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C17C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C17C *v0 = (UnkStruct_ov16_0225C17C *)&param1->data[0];

    ov16_0225CE1C(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C190(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C17C *v0 = (UnkStruct_ov16_0225C17C *)&param1->data[0];

    ov16_0225CF70(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C1A4(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02264EF8 *v0 = (UnkStruct_ov16_02264EF8 *)&param1->data[0];

    ov16_0225D118(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C1B8(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02265050 *v0 = (UnkStruct_ov16_02265050 *)&param1->data[0];

    ov16_0225D1C4(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C1CC(BattleSystem *battleSys, BattlerData *param1)
{
    PokemonSprite_Delete(param1->unk_20);
    ClearCommand(battleSys, param1->battler, 7);
    ZeroDataBuffer(param1);
}

static void ov16_0225C1F0(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02265124 *v0 = (UnkStruct_ov16_02265124 *)&param1->data[0];

    ov16_0225D228(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C204(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02265154 *v0 = (UnkStruct_ov16_02265154 *)&param1->data[0];

    ov16_0225D360(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C218(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0225D3CC(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C228(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_022651A8 *v0 = (UnkStruct_ov16_022651A8 *)&param1->data[0];

    ov16_0225D414(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

/**
 * @brief Slide a healthbar in on the screen.
 *
 * @param battleSys
 * @param battlerData
 */
static void BtlIOCmd_SlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData)
{
    HealthbarData *healthbar = (HealthbarData *)&battlerData->data[0];

    BattleDisplay_SlideHealthbarIn(battleSys, battlerData, healthbar);
    ZeroDataBuffer(battlerData);
}

/**
 * @brief Slide a healthbar out of the screen.
 *
 * @param battleSys
 * @param battlerData
 */
static void BtlIOCmd_SlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_SlideHealthbarOut(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C260(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C260 *v0 = (UnkStruct_ov16_0225C260 *)&param1->data[0];

    ov16_0223F290(battleSys, v0->unk_29);
    ov16_0225D5B8(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C288(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_022656F0 *v0 = (UnkStruct_ov16_022656F0 *)&param1->data[0];

    ov16_0225D698(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C29C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C29C *v0 = (UnkStruct_ov16_0225C29C *)&param1->data[0];

    ov16_0225D708(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C2B0(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C2B0 *v0 = (UnkStruct_ov16_0225C2B0 *)&param1->data[0];

    ov16_0225D794(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C2C4(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C2C4 *v0 = (UnkStruct_ov16_0225C2C4 *)&param1->data[0];

    ov16_0225D840(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C2D8(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C2D8 *v0 = (UnkStruct_ov16_0225C2D8 *)&param1->data[0];

    ov16_0225D8AC(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C2EC(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C2EC *v0 = (UnkStruct_ov16_0225C2EC *)&param1->data[0];

    ov16_0225D8F0(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

/**
 * @brief Print a message to the screen.
 *
 * @param battleSys
 * @param battlerData
 */
static void BtlIOCmd_PrintBattleMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessage *battleMsg = (BattleMessage *)&battlerData->data[0];

    BattleDisplay_PrintMessage(battleSys, battlerData, battleMsg);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C314(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02265BBC *v0 = (UnkStruct_ov16_02265BBC *)&param1->data[0];

    ov16_0225D9A8(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C328(BattleSystem *battleSys, BattlerData *param1)
{
    if (PokemonSprite_GetAttribute(param1->unk_20, MON_SPRITE_HIDE) == 1) {
        ClearCommand(battleSys, param1->battler, 23);
    } else {
        ov16_0225DA44(battleSys, param1);
    }

    ZeroDataBuffer(param1);
}

static void ov16_0225C35C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C35C *v0 = (UnkStruct_ov16_0225C35C *)&param1->data[0];

    ov16_0225DA74(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C370(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C370 *v0 = (UnkStruct_ov16_0225C370 *)&param1->data[0];

    ov16_0225DB00(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C384(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C384 *v0 = (UnkStruct_ov16_0225C384 *)&param1->data[0];

    ov16_0225DB74(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C398(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C398 *v0 = (UnkStruct_ov16_0225C398 *)&param1->data[0];

    ov16_0225DC4C(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C3AC(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0225DC7C(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C3BC(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C3BC *v0 = (UnkStruct_ov16_0225C3BC *)&param1->data[0];

    ov16_0225DCB0(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C3D0(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C3D0 *v0 = (UnkStruct_ov16_0225C3D0 *)&param1->data[0];

    ov16_0225DD44(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C3E4(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C3E4 *v0 = (UnkStruct_ov16_0225C3E4 *)&param1->data[0];

    ov16_0225DD7C(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C3F8(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C3F8 *v0 = (UnkStruct_ov16_0225C3F8 *)&param1->data[0];

    ov16_0225DDD8(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C40C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C40C *v0 = (UnkStruct_ov16_0225C40C *)&param1->data[0];

    ov16_0225DE30(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C420(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0225DE88(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C430(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C430 *v0 = (UnkStruct_ov16_0225C430 *)&param1->data[0];

    ov16_0225DEDC(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C444(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0225DF34(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C454(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C454 *v0 = (UnkStruct_ov16_0225C454 *)&param1->data[0];

    ov16_0225DF6C(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C468(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C468 *v0 = (UnkStruct_ov16_0225C468 *)&param1->data[0];

    ov16_0225E008(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C47C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_022662FC *v0 = (UnkStruct_ov16_022662FC *)&param1->data[0];
    int v1;
    Pokemon *v2 = BattleSystem_PartyPokemon(battleSys, param1->battler, v0->unk_01_0);

    if ((v0->unk_18 & 0x200000) == 0) {
        for (v1 = 0; v1 < LEARNED_MOVES_MAX; v1++) {
            if ((v0->unk_01_4 & FlagIndex(v1)) == 0) {
                Pokemon_SetValue(v2, MON_DATA_MOVE1 + v1, (u8 *)&v0->unk_0E[v1]);
                Pokemon_SetValue(v2, MON_DATA_MOVE1_PP + v1, (u8 *)&v0->unk_12[v1]);
            }
        }
    }

    if ((v0->unk_08 & FlagIndex(v0->unk_01_0)) == 0) {
        Pokemon_SetValue(v2, MON_DATA_HELD_ITEM, (u8 *)&v0->unk_0C);
    }

    Pokemon_SetValue(v2, MON_DATA_HP, (u8 *)&v0->unk_02);
    Pokemon_SetValue(v2, MON_DATA_STATUS, (u8 *)&v0->unk_04);

    if (v0->unk_26) {
        Pokemon_SetValue(v2, MON_DATA_FORM, (u8 *)&v0->unk_1C);
    }

    if (v0->unk_24) {
        Pokemon_SetValue(v2, MON_DATA_ABILITY, (u8 *)&v0->unk_20);
        Pokemon_CalcLevelAndStats(v2);
    }

    ClearCommand(battleSys, param1->battler, v0->unk_00);
    ZeroDataBuffer(param1);
}

static void ov16_0225C558(BattleSystem *battleSys, BattlerData *param1)
{
    u32 battleType;
    UnkStruct_ov16_02268A14 *v1;

    battleType = BattleSystem_BattleType(battleSys);
    v1 = ov16_0223E02C(battleSys);

    if (param1->bootState == 0x0) {
        if ((battleType & BATTLE_TYPE_2vs2) || (((battleType & BATTLE_TYPE_2vs2) == 0) && (param1->battlerType != 4))) {
            ov16_0226947C(v1, -0xd00, 0);
        }
    }

    ClearCommand(battleSys, param1->battler, param1->data[0]);
    ZeroDataBuffer(param1);
}

static void ov16_0225C5B0(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_022675AC(&param1->healthbar);
    ov16_022647D8(param1);
    ClearCommand(battleSys, param1->battler, param1->data[0]);
    ZeroDataBuffer(param1);
}

static void ov16_0225C5E0(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02266498 *v0 = (UnkStruct_ov16_02266498 *)&param1->data[0];
    Pokemon *v1;
    int v2, v3, v4;
    u32 v5 = 0;
    v3 = BattleSystem_PartyCount(battleSys, param1->battler);

    for (v2 = 0; v2 < v3; v2++) {
        v1 = BattleSystem_PartyPokemon(battleSys, param1->battler, v2);

        if (v0->unk_01 == 104) {
            v4 = ABILITY_NONE;
        } else {
            v4 = Pokemon_GetValue(v1, MON_DATA_ABILITY, NULL);
        }

        if ((v0->unk_02 != 215) || ((v0->unk_02 == 215) && (v4 != ABILITY_SOUNDPROOF))) {
            Pokemon_SetValue(v1, MON_DATA_STATUS, (u8 *)&v5);
        }
    }

    ClearCommand(battleSys, param1->battler, v0->unk_00);
    ZeroDataBuffer(param1);
}

static void ov16_0225C65C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C65C *v0 = (UnkStruct_ov16_0225C65C *)&param1->data[0];

    ov16_0225E0BC(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C670(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_022664F8 *v0 = (UnkStruct_ov16_022664F8 *)&param1->data[0];

    ov16_0225E0F4(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C684(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C684 *v0 = (UnkStruct_ov16_0225C684 *)&param1->data[0];
    PokemonSpriteTemplate v1;
    PokemonSpriteTemplate *v2;
    int v3;
    int v4;

    if (param1->battlerType & 0x1) {
        v4 = 2;
    } else {
        v4 = 0;
    }

    BuildPokemonSpriteTemplate(&v1, v0->unk_02, v0->unk_04, v4, v0->unk_05, v0->unk_01, v0->unk_08);

    v2 = PokemonSprite_GetTemplate(param1->unk_20);
    *v2 = v1;

    PokemonSprite_ScheduleReloadFromNARC(param1->unk_20);
    CharacterSprite_LoadPokemonSprite(v2->narcID, v2->character, HEAP_ID_BATTLE, ov16_0223F2B8(ov16_0223E0C8(battleSys), param1->battler), v0->unk_08, FALSE, v4, v2->spindaSpots);

    PokemonSpriteData_SetNarcID(ov16_0223E0C8(battleSys), param1->battler, v2->narcID);
    PokemonSpriteData_SetPalette(ov16_0223E0C8(battleSys), param1->battler, v2->palette);

    v3 = LoadPokemonSpriteYOffset(v0->unk_02, v0->unk_04, v4, v0->unk_01, v0->unk_08);
    PokemonSpriteData_SetYOffset(ov16_0223E0C8(battleSys), param1->battler, v3);

    v3 = ov12_022384CC(param1->battlerType, 1) + v3;
    PokemonSprite_SetAttribute(param1->unk_20, MON_SPRITE_Y_CENTER, v3);

    ClearCommand(battleSys, param1->battler, v0->unk_00);
    ZeroDataBuffer(param1);
}

static void ov16_0225C77C(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0223EF8C(battleSys);
    ClearCommand(battleSys, param1->battler, 46);
    ZeroDataBuffer(param1);
}

static void ov16_0225C79C(BattleSystem *battleSys, BattlerData *param1)
{
    if (param1->bootState == 0x0) {
        {
            UnkStruct_ov16_02268A14 *v0;
            int v1;
            Healthbar *v2;
            NARC *v3;
            NARC *v4;

            v3 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            v4 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
            v0 = ov16_0223E02C(battleSys);

            ov16_02268C04(v3, v4, v0, 0, 0, NULL);
            ov16_0226BCCC(v0, 0);

            NARC_dtor(v3);
            NARC_dtor(v4);

            v1 = BattleSystem_Partner(battleSys, param1->battler);

            if (v1 != param1->battler) {
                v2 = ov16_0223F35C(battleSys, v1);
                ov16_0226846C(v2);
            }

            ov16_022675AC(&param1->healthbar);
            ov16_02269218(v0);
            ov16_022647D8(param1);
        }
    }

    ClearCommand(battleSys, param1->battler, 47);
    ZeroDataBuffer(param1);
}

static void ov16_0225C840(BattleSystem *battleSys, BattlerData *param1)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&param1->data[0];

    BattleDisplay_ShowBattleStartPartyGauge(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C854(BattleSystem *battleSys, BattlerData *param1)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&param1->data[0];

    BattleDisplay_HideBattleStartPartyGauge(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C868(BattleSystem *battleSys, BattlerData *param1)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&param1->data[0];

    if (Battler_Side(battleSys, param1->battler)) {
        BattleDisplay_ShowPartyGauge(battleSys, param1, v0);
    } else {
        ClearCommand(battleSys, param1->battler, 50);
    }

    ZeroDataBuffer(param1);
}

static void ov16_0225C8A4(BattleSystem *battleSys, BattlerData *param1)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&param1->data[0];

    if (Battler_Side(battleSys, param1->battler)) {
        BattleDisplay_HidePartyGauge(battleSys, param1, v0);
    } else {
        ClearCommand(battleSys, param1->battler, 51);
    }

    ZeroDataBuffer(param1);
}

static void ov16_0225C8E0(BattleSystem *battleSys, BattlerData *param1)
{
    SpriteSystem *v0 = BattleSystem_GetSpriteSystem(battleSys);
    SpriteManager *v1 = BattleSystem_GetSpriteManager(battleSys);
    PaletteData *v2 = BattleSystem_PaletteSys(battleSys);

    PartyGauge_LoadGraphics(v0, v1, v2);
    ClearCommand(battleSys, param1->battler, 52);
    ZeroDataBuffer(param1);
}

static void ov16_0225C91C(BattleSystem *battleSys, BattlerData *param1)
{
    SpriteManager *v0 = BattleSystem_GetSpriteManager(battleSys);

    PartyGauge_FreeGraphics(v0);
    ClearCommand(battleSys, param1->battler, 53);
    ZeroDataBuffer(param1);
}

static void ov16_0225C940(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_022666BC *v0 = (UnkStruct_ov16_022666BC *)&param1->data[0];

    if (v0->unk_01 == 0) {
        if (param1->bootState == 0x0) {
            ov16_0223F24C(battleSys, v0->unk_02);
        }
    } else {
        if (param1->bootState != 0x0) {
            ov16_0223F24C(battleSys, v0->unk_02);
        }
    }

    ClearCommand(battleSys, param1->battler, v0->unk_00);
    ZeroDataBuffer(param1);
}

static void ov16_0225C988(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C988 *v0 = (UnkStruct_ov16_0225C988 *)&param1->data[0];

    ov16_0223F638(battleSys, v0->unk_02, v0->unk_04);
    ov16_0225E23C(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C9AC(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02265BBC *v0 = (UnkStruct_ov16_02265BBC *)&param1->data[0];

    ov16_0225E294(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225C9C0(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0225E2C8(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C9D0(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0225E300(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C9E0(BattleSystem *battleSys, BattlerData *param1)
{
    ov16_0225E338(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225C9F0(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225C9F0 *v0 = (UnkStruct_ov16_0225C9F0 *)&param1->data[0];

    ov16_0223F638(battleSys, v0->unk_02, v0->unk_04);
    ov16_0225E38C(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225CA14(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225CA14 *v0 = (UnkStruct_ov16_0225CA14 *)&param1->data[0];

    ov16_0223F638(battleSys, v0->unk_02, v0->unk_04);
    ov16_0225E3E0(battleSys, param1);
    ZeroDataBuffer(param1);
}

static void ov16_0225CA38(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02265BBC *v0 = (UnkStruct_ov16_02265BBC *)&param1->data[0];

    ov16_0225E434(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225CA4C(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225CA4C *v0 = (UnkStruct_ov16_0225CA4C *)&param1->data[0];

    ov16_0225E468(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225CA60(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_0225CA60 *v0 = (UnkStruct_ov16_0225CA60 *)&param1->data[0];

    ov16_0225E4C8(battleSys, param1, v0);
    ZeroDataBuffer(param1);
}

static void ov16_0225CA74(BattleSystem *battleSys, BattlerData *param1)
{
    UnkStruct_ov16_02266A38 *v0 = (UnkStruct_ov16_02266A38 *)&param1->data[0];
    Party *v1;
    Pokemon *v2;
    int v3;
    int v4;
    int v5 = 0;
    int v6 = 0;
    u8 v7;

    ov16_0223F638(battleSys, v0->unk_02, v0->unk_08);

    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_FRONTIER) {
        BattleSystem_SetResultFlag(battleSys, v0->unk_04);
    } else {
        for (v4 = 0; v4 < BattleSystem_MaxBattlers(battleSys); v4++) {
            v1 = BattleSystem_Party(battleSys, v4);

            for (v3 = 0; v3 < Party_GetCurrentCount(v1); v3++) {
                v2 = Party_GetPokemonBySlotIndex(v1, v3);

                if ((Pokemon_GetValue(v2, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0)) {
                    if (Battler_Side(battleSys, v4)) {
                        v6 += Pokemon_GetValue(v2, MON_DATA_HP, NULL);
                    } else {
                        v5 += Pokemon_GetValue(v2, MON_DATA_HP, NULL);
                    }
                }
            }
        }

        if ((v5 == 0) && (v6 == 0)) {
            BattleSystem_SetResultFlag(battleSys, 0x3);
        } else if (v5 == 0) {
            BattleSystem_SetResultFlag(battleSys, 0x2);
        } else {
            BattleSystem_SetResultFlag(battleSys, 0x1);
        }
    }

    ClearCommand(battleSys, param1->battler, v0->unk_00);
    ZeroDataBuffer(param1);
}

static void ov16_0225CB80(BattleSystem *battleSys, BattlerData *param1)
{
    Window *v0 = BattleSystem_Window(battleSys, 0);

    Window_FillTilemap(v0, 0xff);
    Window_LoadTiles(v0);

    ClearCommand(battleSys, param1->battler, 66);
    ZeroDataBuffer(param1);
}

static void ZeroDataBuffer(BattlerData *param0)
{
    param0->data[0] = 0;
}
