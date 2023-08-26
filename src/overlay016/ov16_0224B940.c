#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"
#include "constants/sdat.h"
#include "constants/trainer.h"

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"

#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "struct_defs/trainer_data.h"
#include "battle/ai_context.h"
#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0224DDA8.h"
#include "overlay016/struct_ov16_0225C300.h"

#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02025E68.h"
#include "unk_02034198.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "party.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "overlay016/ov16_0223B140.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_022405FC.h"
#include "overlay016/ov16_0224B940.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov16_0226EAD0;

typedef void (* UnkFuncPtr_ov16_0226EAEC)(UnkStruct_0207ADB4 *, BattleContext *);

void * ov16_0224B940(UnkStruct_0207ADB4 * param0);
int ov16_0224B990(UnkStruct_0207ADB4 * param0, BattleContext * param1);
void ov16_0224B9DC(BattleContext * param0);
void ov16_0224B9F4(UnkStruct_0207ADB4 * param0, BattleContext * param1, int param2, int param3, int param4);
static void ov16_0224BA1C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224BA60(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224BA78(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224BAA8(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224BADC(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224BB28(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224C448(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224C5C4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224C718(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224C794(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224CF7C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224D9C4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224DC10(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224DC68(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224DDA8(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224DF08(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224DF4C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224E010(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224E058(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224E0B8(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224E11C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static int ov16_0224E13C(UnkStruct_0207ADB4 * param0, BattleContext * param1, int * param2);
static BOOL ov16_0224E458(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0224E5F4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0224E6F4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0224E784(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0224EE88(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0224EF00(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0224EF20(UnkStruct_0207ADB4 * param0, BattleContext * param1, int param2, int param3, int param4);
static BOOL ov16_0224F274(UnkStruct_0207ADB4 * param0, BattleContext * param1, int param2, int param3, int param4);
static BOOL ov16_0224F460(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224F5CC(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224F5E8(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224F734(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224F824(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224F854(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224F8D4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224F8EC(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224FD00(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224FEE0(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0224FEE4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250170(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0225016C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250270(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250298(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250438(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250480(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250494(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250498(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_022505C4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_022506A4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_022506C0(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_0225074C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250760(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02250798(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0225079C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_02250A48(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_02250DE4(UnkStruct_0207ADB4 * param0, BattleContext * param1, u8 param2, u32 param3, int * param4, int param5, u32 * param6);
static void ov16_02250E8C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_02250EF4(BattleContext * param0, int param1, int param2, int param3);
static BOOL ov16_02250F98(BattleContext * param0, int param1, int param2);
static void ov16_02250FF4(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0225143C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_022511FC(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_02251218(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_0225126C(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_022512F8(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static BOOL ov16_022513B0(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02251604(UnkStruct_0207ADB4 * param0, BattleContext * param1);
static void ov16_02251694(UnkStruct_0207ADB4 * param0, BattleContext * param1);

extern u32 Unk_ov14_022248A4[];

static const UnkFuncPtr_ov16_0226EAEC Unk_ov16_0226EAEC[] = {
    ov16_0224BA1C,
    ov16_0224BA60,
    ov16_0224BA78,
    ov16_0224BAA8,
    ov16_0224BADC,
    ov16_0224BB28,
    ov16_0224C448,
    ov16_0224C5C4,
    ov16_0224C718,
    ov16_0224C794,
    ov16_0224CF7C,
    ov16_0224D9C4,
    ov16_0224DC10,
    ov16_0224DC68,
    ov16_0224DDA8,
    ov16_0224DF08,
    ov16_0224DF4C,
    ov16_0224E010,
    ov16_0224E058,
    ov16_0224E0B8,
    ov16_0224E11C,
    ov16_0224F5CC,
    ov16_0224F5E8,
    ov16_0224F734,
    ov16_0224F824,
    ov16_0224F854,
    ov16_0224F8D4,
    ov16_0224F8EC,
    ov16_0224FD00,
    ov16_0224FEE0,
    ov16_0224FEE4,
    ov16_02250170,
    ov16_0225016C,
    ov16_02250270,
    ov16_02250298,
    ov16_02250438,
    ov16_02250480,
    ov16_02250494,
    ov16_02250498,
    ov16_022505C4,
    ov16_022506A4,
    ov16_022506C0,
    ov16_0225074C,
    ov16_02250760,
    ov16_02250798
};

void * ov16_0224B940 (UnkStruct_0207ADB4 * param0)
{
    BattleContext * v0;
    int v1;

    v0 = Heap_AllocFromHeap(5, sizeof(BattleContext));

    MI_CpuClearFast(v0, sizeof(BattleContext));

    ov16_022541C4(v0);
    ov16_022542B8(param0, v0);
    ov16_02251604(param0, v0);

    MoveTable_Load(&v0->aiContext.moveTable);
    v0->aiContext.itemTable = sub_0207D388(5);

    return v0;
}

int ov16_0224B990 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (param1->battleEndFlag == 0) {
        if ((ov16_0223F438(param0)) && ((ov16_0223F438(param0) & 0x40) == 0)) {
            param1->command = 41;
        }
    }

    Unk_ov16_0226EAEC[param1->command](param0, param1);

    if (param1->command == 44) {
        return 1;
    }

    return 0;
}

void ov16_0224B9DC (BattleContext * param0)
{
    Heap_FreeToHeap(param0->aiContext.itemTable);
    Heap_FreeToHeap(param0);
}

void ov16_0224B9F4 (UnkStruct_0207ADB4 * param0, BattleContext * param1, int param2, int param3, int param4)
{
    ov16_0224EF20(param0, param1, param2, param3, param4);
    ov16_0224F274(param0, param1, param2, param3, param4);
}

static void ov16_0224BA1C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        ov16_0225177C(param0, param1, v0, param1->selectedMonIndex[v0]);
    }

    param1->hpTemp = param1->battleMons[1].curHP;
    param1->command = 1;
}

static void ov16_0224BA60 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 0));

    param1->command = 21;
    param1->commandNext = 2;
}

static void ov16_0224BA78 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (ov16_02253FCC(param0, param1)) {
        ov16_02251E1C(param1, 1, (0 + 41));
        param1->command = 21;
        param1->commandNext = 3;
    } else {
        param1->command = 3;
    }

    ov16_02255FBC(param0, param1);
}

static void ov16_0224BAA8 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;

    v0 = ov16_02256414(param0, param1);

    if (v0) {
        ov16_02251E1C(param1, 1, v0);
        param1->commandNext = param1->command;
        param1->command = 21;
    } else {
        ov16_02255FBC(param0, param1);
        ov16_0223F7E8(param0);
        param1->command = 4;
    }
}

static void ov16_0224BADC (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        param1->battlerCommandState[v0] = 0;
        param1->battleMons[v0].moveEffectsTemp = param1->battleMons[v0].moveEffectsMask;
        param1->recordedCommandFlags[v0] = 0;
    }

    ov16_0223F288(param0, 0);
    ov16_0223B748(param0, 1);

    param1->command = 5;
}

static void ov16_0224BB28 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov16_0225C300 v4;

    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223DF0C(param0);
    v3 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        switch (param1->battlerCommandState[v0]) {
        case 0:
            if ((v2 & 0x2) && ((v2 & 0x8) == 0) && ((v0 == 2) && (param1->battlerCommandState[0] != 14) || (v0 == 3) && (param1->battlerCommandState[1] != 14))) {
                break;
            }

            if (param1->battlersSwitchingMask & sub_020787CC(v0)) {
                param1->battlerCommandState[v0] = 13;
                param1->battlerActions[v0][0] = 39;
                break;
            } else if (ov16_02259A28(param1, v0) == 0) {
                param1->turnFlags[v0].ppDecremented = 1;
                param1->battlerCommandState[v0] = 13;
                param1->battlerActions[v0][0] = 13;
                break;
            }

            if ((ov16_02263AF0(ov16_0223DF14(param0, v0)) == 0x1) || (param1->totalTurns)) {
                ov16_02265330(param0, param1, v0, param1->selectedMonIndex[v0]);
                param1->battlerCommandState[v0] = 1;
            } else {
                param1->battlerCommandState[v0] = 2;
            }
            break;
        case 2:
        {
            int v5;

            for (v5 = 0; v5 < v1; v5++) {
                if (v5 == v0) {
                    continue;
                }

                if (ov16_02263AF0(ov16_0223DF14(param0, v5)) != 0x1) {
                    continue;
                }

                if (param1->battlerCommandState[v5] != 14) {
                    break;
                }
            }

            if (v5 == v1) {
                ov16_02265330(param0, param1, v0, param1->selectedMonIndex[v0]);
                param1->battlerCommandState[v0] = 1;
            } else {
                break;
            }
        }
        case 1:
            if (ov16_02259AB4(param1, v0)) {
                param1->battlerActions[v0][3] = param1->ioBuffer[v0][0];

                if (v2 & 0x200) {
                    switch (ov16_02259AB4(param1, v0)) {
                    case 1:
                        param1->battlerCommandState[v0] = 17;
                        param1->nextCommandState[v0] = 13;
                        param1->battlerActions[v0][0] = 17;
                        break;
                    case 4:
                        param1->battlerCommandState[v0] = 17;
                        param1->nextCommandState[v0] = 13;
                        param1->battlerActions[v0][0] = 16;
                        break;
                    }
                } else if (v2 & 0x20) {
                    switch (ov16_02259AB4(param1, v0)) {
                    case 1:
                        param1->battlerCommandState[v0] = 17;
                        param1->nextCommandState[v0] = 13;
                        param1->battlerActions[v0][0] = 17;
                        break;
                    case 2:
                        param1->battlerCommandState[v0] = 17;
                        param1->nextCommandState[v0] = 13;
                        param1->battlerActions[v0][0] = 18;
                        break;
                    case 3:
                        param1->battlerCommandState[v0] = 17;
                        param1->nextCommandState[v0] = 13;
                        param1->battlerActions[v0][0] = 19;
                        break;
                    case 4:
                        param1->battlerCommandState[v0] = 17;
                        param1->nextCommandState[v0] = 13;
                        param1->battlerActions[v0][0] = 16;
                        break;
                    case 5:
                        param1->battlerCommandState[v0] = 17;
                        param1->battlerCommandState[v0] = 13;
                        param1->battlerActions[v0][0] = 20;
                        break;
                    }
                } else {
                    if (ov16_02259AB4(param1, v0) != 0xff) {
                        param1->recordedCommandFlags[v0] |= 0x1;
                    }

                    switch (ov16_02259AB4(param1, v0)) {
                    case 1:
                        if (ov16_02254A6C(param0, param1, v0, 0, 0xffffffff) == 0xf) {
                            param1->turnFlags[v0].struggling = 1;

                            if (ov16_0223EBEC(param0) & 0x10) {
                                param1->battlerCommandState[v0] = 13;
                            } else {
                                param1->battlerCommandState[v0] = 17;
                                param1->nextCommandState[v0] = 16;
                            }
                        } else if (param1->battleMons[v0].moveEffectsData.encoredMove) {
                            param1->moveSlot[v0] = param1->battleMons[v0].moveEffectsData.encoredMoveSlot;
                            param1->moveNumSelected[v0] = param1->battleMons[v0].moveEffectsData.encoredMove;
                            param1->battlerActions[v0][2] = 0;

                            if (ov16_0223EBEC(param0) & 0x10) {
                                param1->battlerCommandState[v0] = 13;
                            } else {
                                param1->battlerCommandState[v0] = 17;
                                param1->nextCommandState[v0] = 13;
                            }
                        } else {
                            param1->battlerCommandState[v0] = 3;
                        }

                        param1->battlerActions[v0][0] = 13;
                        break;
                    case 2:
                        if (ov16_0223DF0C(param0) & (0x4 | 0x80)) {
                            v4.unk_02 = 593;
                            v4.unk_01 = 0;
                            ov16_02266168(param0, v0, v4);
                            param1->battlerCommandState[v0] = 15;
                            param1->nextCommandState[v0] = 0;
                        } else {
                            param1->battlerActions[v0][0] = 14;
                            param1->battlerCommandState[v0] = 7;
                        }
                        break;
                    case 3:
                        param1->battlerActions[v0][0] = 15;
                        param1->battlerCommandState[v0] = 9;
                        break;
                    case 4:
                        param1->battlerActions[v0][0] = 16;
                        param1->battlerCommandState[v0] = 11;
                        break;
                    case 0xff:
                        if (v2 & 0x4) {
                            ov16_0226647C(param0, v0);
                            param1->battlerCommandState[v0] = 0;
                            param1->battlerCommandState[ov16_0223E258(param0, v0)] = 0;
                        } else if ((v2 & 0x2) && (v0 == 2)) {
                            ov16_0226647C(param0, v0);
                            param1->battlerCommandState[0] = 0;
                            param1->battlerCommandState[2] = 0;
                        } else {
                            (void)0;
                        }
                        break;
                    }
                }
            }
            break;
        case 3:
            ov16_022656F0(param0, param1, v0);
            param1->battlerCommandState[v0] = 4;
        case 4:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->battlerCommandState[v0] = 0;
            } else if (ov16_02259AB4(param1, v0)) {
                if ((param1->ioBuffer[v0][0] - 1) == 4) {
                    param1->battlerActions[v0][0] = 16;
                    param1->battlerCommandState[v0] = 11;
                    break;
                } else {
                    if (ov16_02254CA8(param0, param1, v0, param1->ioBuffer[v0][0] - 1, &v4) == 0) {
                        if (ov16_0223EBEC(param0) & 0x10) {
                            ov16_0223F720(param0, 1);
                            ov16_0225B444(param0, ov16_0223DF10(param0));
                        } else {
                            ov16_02266168(param0, v0, v4);
                            param1->battlerCommandState[v0] = 15;
                            param1->nextCommandState[v0] = 3;
                        }
                    } else {
                        param1->battlerActions[v0][2] = param1->ioBuffer[v0][0];
                        param1->moveSlot[v0] = param1->ioBuffer[v0][0] - 1;
                        param1->moveNumSelected[v0] = param1->battleMons[v0].moves[param1->moveSlot[v0]];
                        param1->battlerCommandState[v0] = 5;
                        param1->recordedCommandFlags[v0] |= 0x2;
                    }
                }
            }
            break;
        case 5:
        {
            int v6;

            if (ov16_02250DE4(param0, param1, v0, v2, &v6, param1->moveSlot[v0], &param1->battlerActions[v0][1])) {
                ov16_022657AC(param0, param1, v6, v0);
                param1->battlerCommandState[v0] = 6;
            } else {
                param1->battlerCommandState[v0] = 13;
            }
        }
        break;
        case 6:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->battlerCommandState[v0] = 3;
            } else if (ov16_02259AB4(param1, v0)) {
                param1->battlerActions[v0][1] = param1->ioBuffer[v0][0] - 1;
                param1->battlerCommandState[v0] = 13;

                param1->recordedCommandFlags[v0] |= 0x4;
            }
            break;
        case 7:
            ov16_022658E8(param0, param1, v0);
            param1->battlerCommandState[v0] = 8;
        case 8:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->battlerCommandState[v0] = 0;
            } else if (ov16_02259AB4(param1, v0)) {
                {
                    u32 * v7;

                    v7 = (u32 *)&param1->ioBuffer[v0][0];
                    param1->battlerActions[v0][2] = v7[0];
                    param1->battlerCommandState[v0] = 13;
                }
            }
            break;
        case 9:
        {
            int v8;
            int v9 = 6;
            int v10;

            v8 = ov16_02258BA8(param0, param1, v0);

            if (((ov16_0223E1F8(param0, v0) == 4) || (ov16_0223E1F8(param0, v0) == 5)) && ((v2 == (0x2 | 0x1)) || (v2 == ((0x4 | 0x1) | 0x2)) || (v2 == ((0x2 | 0x1) | 0x80)) || ((v2 == ((0x2 | 0x1) | 0x10)) && (ov16_0223E1F8(param0, v0) == 4)))) {
                v10 = ov16_0223E258(param0, v0);

                if (param1->battlerActions[v10][0] == 15) {
                    v9 = param1->battlerActions[v10][2];
                }
            }

            ov16_02265A8C(param0, param1, v0, 0, v8, v9);
            param1->battlerCommandState[v0] = 10;
        }
        case 10:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->battlerCommandState[v0] = 0;
            } else if (ov16_02259AB4(param1, v0)) {
                param1->battlerActions[v0][2] = param1->ioBuffer[v0][0] - 1;
                param1->switchSelectedMonIndex[v0] = param1->ioBuffer[v0][0] - 1;
                param1->battlerCommandState[v0] = 13;
            }
            break;
        case 11:
            if (v2 & 0x80) {
                ov16_02265B2C(param0, param1, v0, 955, 0, NULL, NULL);
                param1->battlerCommandState[v0] = 12;
            } else if ((v2 & 0x1) && ((v2 & 0x4) == 0)) {
                if (ov16_0223EBEC(param0) & 0x10) {
                    ov16_0223F720(param0, 1);
                    ov16_0225B444(param0, ov16_0223DF10(param0));
                } else {
                    v4.unk_01 = 0;
                    v4.unk_02 = 793;
                    ov16_02266168(param0, v0, v4);
                    param1->battlerCommandState[v0] = 15;
                    param1->nextCommandState[v0] = 0;
                }
            } else if (ov16_02255C00(param0, param1, v0, &v4)) {
                if (ov16_0223EBEC(param0) & 0x10) {
                    ov16_0223F720(param0, 1);
                    ov16_0225B444(param0, ov16_0223DF10(param0));
                } else {
                    ov16_02266168(param0, v0, v4);
                    param1->battlerCommandState[v0] = 15;
                    param1->nextCommandState[v0] = 0;
                }
            } else {
                param1->battlerCommandState[v0] = 12;
            }
            break;
        case 12:
            if (v2 & 0x80) {
                if (ov16_02259AB4(param1, v0)) {
                    if (ov16_02259AB4(param1, v0) == 0xff) {
                        param1->battlerCommandState[v0] = 0;
                    } else {
                        param1->battlerCommandState[v0] = 13;
                    }
                }
            } else {
                param1->battlerCommandState[v0] = 13;
            }

            if ((v2 & 0x2) && ((v2 & 0x8) == 0) && (param1->battlerCommandState[v0] == 13)) {
                param1->battlerCommandState[ov16_0223E258(param0, v0)] = 13;
            }
            break;
        case 13:
            ov16_0226647C(param0, v0);

            if (v2 == ((0x4 | 0x1) | 0x2)) {
                {
                    int v11;

                    v11 = ov16_0223E258(param0, v0);

                    if (param1->battlerCommandState[v11] == 14) {
                        ov16_022666E0(param0, v0);
                    }
                }
            } else {
                ov16_022666E0(param0, v0);
            }

            param1->battlerCommandState[v0] = 14;
        case 14:
            v3++;
            break;
        case 15:
            if (ov16_02259AB4(param1, v0)) {
                ov16_02252040(param1, v0);
                param1->battlerCommandState[v0] = param1->nextCommandState[v0];
            }
            break;
        case 16:
            v4.unk_01 = 2;
            v4.unk_02 = 608;
            v4.unk_04[0] = ov16_02255560(param1, v0);
            ov16_02266168(param0, v0, v4);
            param1->battlerCommandState[v0] = 15;
            param1->nextCommandState[v0] = 13;
            break;
        case 17:
            ov16_022665C8(param0, v0);
            param1->battlerCommandState[v0] = param1->nextCommandState[v0];
            break;
        }
    }

    if (v3 == v1) {
        ov16_02251694(param0, param1);
        ov16_0223B748(param0, 0);

        param1->command = 6;

        for (v0 = 0; v0 < v1; v0++) {
            if (param1->battlerActions[v0][0] == 15) {
                ov16_0225A200(param0, param1, v0, param1->switchSelectedMonIndex[v0]);
            }
        }
    }
}

static void ov16_0224C448 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;
    int v3, v4;
    int v5;
    int v6;

    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223DF0C(param0);
    v5 = 0;

    if (v2 & (0x20 | 0x200)) {
        for (v0 = 0; v0 < v1; v0++) {
            param1->battlerActionOrder[v0] = v0;
        }
    } else {
        if (v2 & 0x4) {
            for (v0 = 0; v0 < v1; v0++) {
                if (param1->battlerActions[v0][3] == 4) {
                    v5 = 5;
                    break;
                }
            }
        } else {
            if (param1->battlerActions[0][3] == 4) {
                v0 = 0;
                v5 = 5;
            }

            if (param1->battlerActions[2][3] == 4) {
                v0 = 2;
                v5 = 5;
            }
        }

        if (v5 == 5) {
            param1->battlerActionOrder[0] = v0;
            v5 = 1;

            for (v3 = 0; v3 < v1; v3++) {
                if (v3 != v0) {
                    param1->battlerActionOrder[v5] = v3;
                    v5++;
                }
            }
        } else {
            for (v0 = 0; v0 < v1; v0++) {
                if ((param1->battlerActions[v0][3] == 2) || (param1->battlerActions[v0][3] == 3)) {
                    param1->battlerActionOrder[v5] = v0;
                    v5++;
                }
            }

            for (v0 = 0; v0 < v1; v0++) {
                if ((param1->battlerActions[v0][3] != 2) && (param1->battlerActions[v0][3] != 3)) {
                    param1->battlerActionOrder[v5] = v0;
                    v5++;
                }
            }

            for (v3 = 0; v3 < v1 - 1; v3++) {
                for (v4 = v3 + 1; v4 < v1; v4++) {
                    {
                        int v7;
                        int v8;

                        v7 = param1->battlerActionOrder[v3];
                        v8 = param1->battlerActionOrder[v4];

                        if (param1->battlerActions[v7][3] == param1->battlerActions[v8][3]) {
                            if (param1->battlerActions[v7][3] == 1) {
                                v6 = 0;
                            } else {
                                v6 = 1;
                            }

                            if (ov16_02252EC8(param0, param1, v7, v8, v6)) {
                                param1->battlerActionOrder[v3] = v8;
                                param1->battlerActionOrder[v4] = v7;
                            }
                        }
                    }
                }
            }
        }
    }

    param1->command = 7;
}

static void ov16_0224C5C4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    v0 = 0;
    v2 = ov16_0223DF1C(param0);

    do {
        switch (param1->turnStartCheckState) {
        case 0:
            while (param1->turnStartCheckTemp < v2) {
                v1 = param1->battlerActionOrder[param1->turnStartCheckTemp];

                if (param1->battlersSwitchingMask & sub_020787CC(v1)) {
                    param1->turnStartCheckTemp++;
                    continue;
                }

                param1->turnStartCheckTemp++;

                if (((param1->battleMons[v1].status & 0x7) == 0) && (ov16_02255570(param1, v1) == 264) && (ov16_02255EC0(param1, v1) == 0) && (param1->turnFlags[v1].struggling == 0)) {
                    ov16_02266AA0(param0);
                    param1->msgBattlerIdTemp = v1;
                    ov16_02251E1C(param1, 1, (0 + 232));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    return;
                }
            }

            param1->turnStartCheckTemp = 0;
            param1->turnStartCheckState++;
            break;
        case 1:
            for (v1 = 0; v1 < v2; v1++) {
                if ((param1->battleMons[v1].statusVolatile & 0x800000) && (ov16_02255570(param1, v1) != 99)) {
                    param1->battleMons[v1].statusVolatile &= 0x800000;
                }
            }

            param1->turnStartCheckState++;
            break;
        case 2:
            for (v1 = 0; v1 < 4; v1++) {
                param1->speedRand[v1] = ov16_0223F4BC(param0);
            }

            param1->turnStartCheckState++;
            break;
        case 3:
            param1->turnStartCheckState = 0;
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    if (v0 == 2) {
        param1->command = 8;
    }
}

static void ov16_0224C718 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v0 = ov16_0223DF1C(param0);

    if (ov16_0225B444(param0, param1)) {
        return;
    }

    param1->waitingBattlers = 0;

    for (v1 = 0; v1 < v0; v1++) {
        if (param1->battlerActions[v1][0] != 39) {
            param1->waitingBattlers++;
        }
    }

    ov16_02255FBC(param0, param1);

    if (param1->turnOrderCounter == v0) {
        param1->turnOrderCounter = 0;
        param1->command = 9;
    } else {
        param1->command = param1->battlerActions[param1->battlerActionOrder[param1->turnOrderCounter]][0];
    }
}

static void ov16_0224C794 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0 = 0;
    int v1;
    int v2;

    v2 = ov16_0223DF1C(param0);

    do {
        if (ov16_02250EF4(param1, param1->command, param1->command, 1) == 1) {
            return;
        }

        if (ov16_02250F98(param1, param1->command, param1->command) == 1) {
            return;
        }

        if (ov16_02250A48(param0, param1) == 1) {
            return;
        }

        switch (param1->fieldConditionCheckState) {
        case 0:
            while (param1->fieldConditionCheckTemp < 2) {
                v1 = param1->fieldConditionCheckTemp;

                if (param1->sideConditionsMask[v1] & 0x1) {
                    if (--param1->sideConditions[v1].reflectTurns == 0) {
                        param1->sideConditionsMask[v1] &= (0x1 ^ 0xffffffff);
                        param1->msgMoveNumTemp = 115;
                        ov16_02251E1C(param1, 1, (0 + 50));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        param1->msgBattlerIdTemp = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->fieldConditionCheckTemp++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->fieldConditionCheckState++;
                param1->fieldConditionCheckTemp = 0;
            }
            break;
        case 1:
            while (param1->fieldConditionCheckTemp < 2) {
                v1 = param1->fieldConditionCheckTemp;

                if (param1->sideConditionsMask[v1] & 0x2) {
                    if (--param1->sideConditions[v1].lightScreenTurns == 0) {
                        param1->sideConditionsMask[v1] &= (0x2 ^ 0xffffffff);
                        param1->msgMoveNumTemp = 113;
                        ov16_02251E1C(param1, 1, (0 + 50));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        param1->msgBattlerIdTemp = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->fieldConditionCheckTemp++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->fieldConditionCheckState++;
                param1->fieldConditionCheckTemp = 0;
            }
            break;
        case 2:
            while (param1->fieldConditionCheckTemp < 2) {
                v1 = param1->fieldConditionCheckTemp;

                if (param1->sideConditionsMask[v1] & 0x40) {
                    if (--param1->sideConditions[v1].mistTurns == 0) {
                        param1->sideConditionsMask[v1] &= (0x40 ^ 0xffffffff);
                        param1->msgMoveNumTemp = 54;
                        ov16_02251E1C(param1, 1, (0 + 50));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        param1->msgBattlerIdTemp = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->fieldConditionCheckTemp++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->fieldConditionCheckState++;
                param1->fieldConditionCheckTemp = 0;
            }
            break;
        case 3:
            while (param1->fieldConditionCheckTemp < 2) {
                v1 = param1->fieldConditionCheckTemp;

                if (param1->sideConditionsMask[v1] & 0x8) {
                    if (--param1->sideConditions[v1].safeguardTurns == 0) {
                        param1->sideConditionsMask[v1] &= (0x8 ^ 0xffffffff);
                        param1->msgBattlerIdTemp = param1->sideConditions[v1].safeguardBattlerId;
                        ov16_02251E1C(param1, 1, (0 + 110));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        param1->msgBattlerIdTemp = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->fieldConditionCheckTemp++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->fieldConditionCheckState++;
                param1->fieldConditionCheckTemp = 0;
            }
            break;
        case 4:
            while (param1->fieldConditionCheckTemp < 2) {
                v1 = param1->fieldConditionCheckTemp;

                if (param1->sideConditionsMask[v1] & 0x300) {
                    param1->sideConditionsMask[v1] -= 1 << 8;

                    if ((param1->sideConditionsMask[v1] & 0x300) == 0) {
                        ov16_02251E1C(param1, 1, (0 + 233));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        param1->msgBattlerIdTemp = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->fieldConditionCheckTemp++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->fieldConditionCheckState++;
                param1->fieldConditionCheckTemp = 0;
            }
            break;
        case 5:
            while (param1->fieldConditionCheckTemp < 2) {
                v1 = param1->fieldConditionCheckTemp;

                if (param1->sideConditionsMask[v1] & 0x7000) {
                    param1->sideConditionsMask[v1] -= 1 << 12;

                    if ((param1->sideConditionsMask[v1] & 0x7000) == 0) {
                        ov16_02251E1C(param1, 1, (0 + 250));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        param1->msgBattlerIdTemp = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->fieldConditionCheckTemp++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->fieldConditionCheckState++;
                param1->fieldConditionCheckTemp = 0;
            }
            break;
        case 6:
            while (param1->fieldConditionCheckTemp < v2) {
                v1 = param1->monSpeedOrder[param1->fieldConditionCheckTemp];

                if (param1->fieldConditions.wishTurns[v1]) {
                    if (--param1->fieldConditions.wishTurns[v1] == 0) {
                        if (param1->battleMons[v1].curHP) {
                            param1->msgBattlerIdTemp = v1;
                            param1->msgBuffer.unk_01 = 2;
                            param1->msgBuffer.unk_02 = 533;
                            param1->msgBuffer.unk_04[0] = v1 | (param1->fieldConditions.wishTarget[v1] << 8);
                            param1->hpCalcTemp = ov16_022563F8(param1->battleMons[v1].maxHP, 2);
                            ov16_02251E1C(param1, 1, (0 + 136));
                            param1->commandNext = param1->command;
                            param1->command = 21;
                            v0 = 1;
                        }
                    }
                }

                param1->fieldConditionCheckTemp++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->fieldConditionCheckState++;
                param1->fieldConditionCheckTemp = 0;
            }
            break;
        case 7:
            if (param1->fieldConditionsMask & 0x3) {
                if (param1->fieldConditionsMask & 0x2) {
                    param1->msgBuffer.unk_02 = 801;
                    param1->msgBuffer.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                } else {
                    if (--param1->fieldConditions.weatherTurns == 0) {
                        ov16_02251E1C(param1, 1, (0 + 234));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    } else {
                        param1->msgBuffer.unk_02 = 801;
                        param1->msgBuffer.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    }
                }

                param1->scriptTemp = 19;
                v0 = 1;
            }

            param1->fieldConditionCheckState++;
            break;
        case 8:
            if (param1->fieldConditionsMask & 0xc) {
                if (param1->fieldConditionsMask & 0x8) {
                    param1->msgBuffer.unk_02 = 805;
                    param1->msgBuffer.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                } else {
                    if (--param1->fieldConditions.weatherTurns == 0) {
                        ov16_02251E1C(param1, 1, (0 + 235));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    } else {
                        param1->msgBuffer.unk_02 = 805;
                        param1->msgBuffer.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    }
                }

                param1->scriptTemp = 21;
                v0 = 1;
            }

            param1->fieldConditionCheckState++;
            break;
        case 9:
            if (param1->fieldConditionsMask & 0x30) {
                if (param1->fieldConditionsMask & 0x20) {
                    param1->msgBuffer.unk_02 = 808;
                    param1->msgBuffer.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                } else {
                    if (--param1->fieldConditions.weatherTurns == 0) {
                        ov16_02251E1C(param1, 1, (0 + 236));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    } else {
                        param1->msgBuffer.unk_02 = 808;
                        param1->msgBuffer.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    }
                }

                param1->scriptTemp = 22;
                v0 = 1;
            }

            param1->fieldConditionCheckState++;
            break;
        case 10:
            if (param1->fieldConditionsMask & 0xc0) {
                if (param1->fieldConditionsMask & 0x80) {
                    param1->msgBuffer.unk_02 = 811;
                    param1->msgBuffer.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                } else {
                    if (--param1->fieldConditions.weatherTurns == 0) {
                        ov16_02251E1C(param1, 1, (0 + 237));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    } else {
                        param1->msgBuffer.unk_02 = 811;
                        param1->msgBuffer.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                    }
                }

                param1->scriptTemp = 20;
                v0 = 1;
            }

            param1->fieldConditionCheckState++;
            break;
        case 11:
            if (param1->fieldConditionsMask & 0x8000) {
                param1->msgBuffer.unk_02 = 813;
                param1->msgBuffer.unk_01 = 0;
                ov16_02251E1C(param1, 1, (0 + 104));
                param1->commandNext = param1->command;
                param1->command = 21;
                param1->scriptTemp = 18;
                v0 = 1;
            }

            param1->fieldConditionCheckState++;
            break;
        case 12:
            if (param1->fieldConditionsMask & 0x7000) {
                param1->fieldConditionsMask -= (1 << 12);

                if ((param1->fieldConditionsMask & 0x7000) == 0) {
                    ov16_02251E1C(param1, 1, (0 + 238));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v0 = 1;
                }
            }

            param1->fieldConditionCheckState++;
            break;
        case 13:
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    if (v0 == 1) {
        ov16_02266AA0(param0);
    }

    if (v0 == 2) {
        param1->fieldConditionCheckState = 0;
        param1->command = 10;
    }
}

static void ov16_0224CF7C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    u8 v1 = 0;
    int v2;
    int v3;

    v2 = ov16_0223DF1C(param0);

    if (ov16_02250EF4(param1, param1->command, param1->command, 1) == 1) {
        return;
    }

    if (ov16_02250F98(param1, param1->command, param1->command) == 1) {
        return;
    }

    if (ov16_02250A48(param0, param1) == 1) {
        return;
    }

    while (param1->monConditionCheckTemp < v2) {
        v3 = param1->monSpeedOrder[param1->monConditionCheckTemp];

        if (param1->battlersSwitchingMask & sub_020787CC(v3)) {
            param1->monConditionCheckTemp++;
            continue;
        }

        switch (param1->monConditionCheckState) {
        case 0:
            if ((param1->battleMons[v3].moveEffectsMask & 0x400) && (param1->battleMons[v3].curHP != param1->battleMons[v3].maxHP) && (param1->battleMons[v3].curHP != 0)) {
                if (param1->battleMons[v3].moveEffectsData.healBlockTurns) {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 239));
                } else {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 137));
                }

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 1:
            if ((param1->battleMons[v3].moveEffectsMask & 0x1000000) && (param1->battleMons[v3].curHP != param1->battleMons[v3].maxHP) && (param1->battleMons[v3].curHP != 0)) {
                if (param1->battleMons[v3].moveEffectsData.healBlockTurns) {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 239));
                } else {
                    param1->msgBattlerIdTemp = v3;
                    param1->msgMoveNumTemp = 392;
                    param1->hpCalcTemp = ov16_022563F8(param1->battleMons[v3].maxHP, 16);
                    ov16_02251E1C(param1, 1, (0 + 169));
                }

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 2:
            if (ov16_022562E8(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 3:
            if (ov16_022579A4(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 4:
            if (ov16_02258008(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 5:
            if ((param1->battleMons[v3].moveEffectsMask & 0x4) && (param1->battleMons[param1->battleMons[v3].moveEffectsMask & 0x3].curHP != 0) && (ov16_02255A4C(param1, v3) != 98) && (param1->battleMons[v3].curHP != 0)) {
                param1->msgBattlerIdAttacker = param1->battleMons[v3].moveEffectsMask & 0x3;
                param1->msgBattlerIdDefender = v3;

                ov16_02251E1C(param1, 1, (0 + 69));

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 6:
            if ((param1->battleMons[v3].status & 0x8) && (param1->battleMons[v3].curHP != 0)) {
                param1->msgBattlerIdTemp = v3;
                param1->hpCalcTemp = ov16_022563F8(param1->battleMons[v3].maxHP * -1, 8);

                ov16_02251E1C(param1, 1, (0 + 23));

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 7:
            if ((param1->battleMons[v3].status & 0x80) && (param1->battleMons[v3].curHP != 0)) {
                param1->msgBattlerIdTemp = v3;
                param1->hpCalcTemp = ov16_022563F8(param1->battleMons[v3].maxHP, 16);

                if ((param1->battleMons[v3].status & 0xf00) != 0xf00) {
                    param1->battleMons[v3].status += 0x100;
                }

                param1->hpCalcTemp *= ((param1->battleMons[v3].status & 0xf00) >> 8);
                param1->hpCalcTemp *= -1;

                ov16_02251E1C(param1, 1, (0 + 23));

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 8:
            if ((param1->battleMons[v3].status & 0x10) && (param1->battleMons[v3].curHP != 0)) {
                param1->msgBattlerIdTemp = v3;
                ov16_02251E1C(param1, 1, (0 + 26));
                param1->commandNext = param1->command;
                param1->command = 21;
                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 9:
            if ((param1->battleMons[v3].statusVolatile & 0x8000000) && (param1->battleMons[v3].curHP != 0)) {
                if (param1->battleMons[v3].status & 0x7) {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 94));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 1;
                } else {
                    param1->battleMons[v3].statusVolatile &= (0x8000000 ^ 0xffffffff);
                }
            }

            param1->monConditionCheckState++;
            break;
        case 10:
            if ((param1->battleMons[v3].statusVolatile & 0x10000000) && (param1->battleMons[v3].curHP != 0)) {
                param1->msgBattlerIdTemp = v3;

                ov16_02251E1C(param1, 1, (0 + 98));

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 11:
            if ((param1->battleMons[v3].statusVolatile & 0xe000) && (param1->battleMons[v3].curHP != 0)) {
                param1->battleMons[v3].statusVolatile -= 0x2000;

                if (param1->battleMons[v3].statusVolatile & 0xe000) {
                    param1->hpCalcTemp = ov16_022563F8(param1->battleMons[v3].maxHP * -1, 16);
                    ov16_02251E1C(param1, 1, (0 + 59));
                } else {
                    ov16_02251E1C(param1, 1, (0 + 60));
                }

                param1->msgMoveNumTemp = param1->battleMons[v3].moveEffectsData.bindingMove;
                param1->msgBattlerIdTemp = v3;
                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 12:
            param1->scriptTemp = ov16_022555A4(param0, param1, 4, v3, 123);

            if ((param1->battleMons[v3].status & 0x7) && (ov16_02255A4C(param1, v3) != 98) && (param1->battleMons[v3].curHP != 0) && (param1->scriptTemp)) {
                param1->hpCalcTemp = ov16_022563F8(param1->battleMons[v3].maxHP * -1, 8);

                ov16_02251E1C(param1, 1, (0 + 263));

                param1->battleStatusMask |= 0x40;
                param1->msgBattlerIdTemp = v3;
                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 13:
            if (param1->battleMons[v3].statusVolatile & 0x70) {
                {
                    u8 v4;

                    for (v4 = 0; v4 < v2; v4++) {
                        if ((param1->battleMons[v4].status & 0x7) && (param1->battleMons[v4].curHP) && (ov16_02255A4C(param1, v4) != 43)) {
                            param1->msgBattlerIdTemp = v4;
                            ov16_02251E1C(param1, 1, (0 + 19));
                            param1->commandNext = param1->command;
                            param1->command = 21;
                            break;
                        }
                    }

                    if (v4 != v2) {
                        v1 = 2;
                        break;
                    }
                }

                param1->battleMons[v3].statusVolatile -= 0x10;

                if (ov16_02255498(param1, v3)) {
                    v0 = (0 + 241);
                    param1->battleMons[v3].statusVolatile &= (0x70 ^ 0xffffffff);
                    param1->fieldConditionsMask &= ((sub_020787CC(v3) << 8) ^ 0xffffffff);
                } else if (param1->battleMons[v3].statusVolatile & 0x70) {
                    v0 = (0 + 240);
                } else {
                    v0 = (0 + 241);
                    param1->battleMons[v3].statusVolatile &= (0x70 ^ 0xffffffff);
                    param1->fieldConditionsMask &= ((sub_020787CC(v3) << 8) ^ 0xffffffff);
                }

                param1->msgBattlerIdTemp = v3;

                ov16_02251E1C(param1, 1, v0);

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 1;
            }

            if (v1 != 2) {
                param1->monConditionCheckState++;
            }
            break;
        case 14:
            if (param1->battleMons[v3].statusVolatile & 0xc00) {
                param1->battleMons[v3].statusVolatile -= 0x400;

                if (ov16_02255498(param1, v3)) {
                    param1->battleMons[v3].statusVolatile &= (0xc00 ^ 0xffffffff);
                } else if (((param1->battleMons[v3].statusVolatile & 0xc00) == 0) && ((param1->battleMons[v3].statusVolatile & 0x7) == 0)) {
                    param1->battlerIdAddlEffect = v3;

                    ov16_02251E1C(param1, 1, (0 + 51));

                    param1->commandNext = param1->command;
                    param1->command = 21;

                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 15:
            if (param1->battleMons[v3].moveEffectsData.disabledMove) {
                for (v0 = 0; v0 < 4; v0++) {
                    if (param1->battleMons[v3].moveEffectsData.disabledMove == param1->battleMons[v3].moves[v0]) {
                        break;
                    }
                }

                if (v0 == 4) {
                    param1->battleMons[v3].moveEffectsData.disabledTurns = 0;
                }

                if (param1->battleMons[v3].moveEffectsData.disabledTurns) {
                    param1->battleMons[v3].moveEffectsData.disabledTurns--;
                } else {
                    param1->battleMons[v3].moveEffectsData.disabledMove = 0;
                    param1->msgBattlerIdTemp = v3;

                    ov16_02251E1C(param1, 1, (0 + 72));

                    param1->commandNext = param1->command;
                    param1->command = 21;

                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 16:
            if (param1->battleMons[v3].moveEffectsData.encoredMove) {
                for (v0 = 0; v0 < 4; v0++) {
                    if (param1->battleMons[v3].moveEffectsData.encoredMove == param1->battleMons[v3].moves[v0]) {
                        break;
                    }
                }

                if ((v0 == 4) || ((v0 != 4) && (param1->battleMons[v3].ppCur[v0] == 0))) {
                    param1->battleMons[v3].moveEffectsData.encoredTurns = 0;
                }

                if (param1->battleMons[v3].moveEffectsData.encoredTurns) {
                    param1->battleMons[v3].moveEffectsData.encoredTurns--;
                } else {
                    param1->battleMons[v3].moveEffectsData.encoredMove = 0;
                    param1->msgBattlerIdTemp = v3;

                    ov16_02251E1C(param1, 1, (0 + 74));

                    param1->commandNext = param1->command;
                    param1->command = 21;

                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 17:
            if (param1->battleMons[v3].moveEffectsMask & 0x18) {
                param1->battleMons[v3].moveEffectsMask -= 0x8;
            }

            param1->monConditionCheckState++;
            break;
        case 18:
            if (param1->battleMons[v3].moveEffectsData.chargedTurns) {
                if (--param1->battleMons[v3].moveEffectsData.chargedTurns == 0) {
                    param1->battleMons[v3].moveEffectsMask &= (0x200 ^ 0xffffffff);
                }
            }

            param1->monConditionCheckState++;
            break;
        case 19:
            if (param1->battleMons[v3].moveEffectsData.tauntedTurns) {
                param1->battleMons[v3].moveEffectsData.tauntedTurns--;

                if (param1->battleMons[v3].moveEffectsData.tauntedTurns == 0) {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 288));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 20:
            if (param1->battleMons[v3].moveEffectsData.magnetRiseTurns) {
                param1->battleMons[v3].moveEffectsData.magnetRiseTurns--;

                if (param1->battleMons[v3].moveEffectsData.magnetRiseTurns == 0) {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 242));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 21:
            if (param1->battleMons[v3].moveEffectsData.healBlockTurns) {
                param1->battleMons[v3].moveEffectsData.healBlockTurns--;

                if (param1->battleMons[v3].moveEffectsData.healBlockTurns == 0) {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 243));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 22:
            if (param1->battleMons[v3].moveEffectsData.embargoTurns) {
                param1->battleMons[v3].moveEffectsData.embargoTurns--;

                if (param1->battleMons[v3].moveEffectsData.embargoTurns == 0) {
                    param1->msgBattlerIdTemp = v3;
                    ov16_02251E1C(param1, 1, (0 + 244));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 23:
            if (param1->battleMons[v3].moveEffectsMask & 0x1800) {
                param1->battleMons[v3].moveEffectsMask -= 0x800;

                if ((param1->battleMons[v3].moveEffectsMask & 0x1800) == 0) {
                    param1->battlerIdAddlEffect = v3;
                    param1->addlEffectType = 4;
                    ov16_02251E1C(param1, 1, (0 + 18));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 1;
                }
            }

            param1->monConditionCheckState++;
            break;
        case 24:
        {
            int v5;

            if (ov16_02258104(param0, param1, v3, &v5) == 1) {
                param1->msgBattlerIdTemp = v3;
                ov16_02251E1C(param1, 1, v5);
                param1->commandNext = param1->command;
                param1->command = 21;
                v1 = 1;
            }
        }
            param1->monConditionCheckState++;
            break;
        case 25:
            if (ov16_022587A4(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->monConditionCheckState++;
            break;
        case 26:
            param1->monConditionCheckState = 0;
            param1->monConditionCheckTemp++;
            break;
        }

        if (v1) {
            ov16_02266AA0(param0);
            return;
        }
    }

    param1->monConditionCheckState = 0;
    param1->monConditionCheckTemp = 0;
    param1->command = 11;
}

static void ov16_0224D9C4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    v1 = ov16_0223DF1C(param0);

    if (ov16_02250EF4(param1, param1->command, param1->command, 1) == 1) {
        return;
    }

    ov16_02266AA0(param0);

    switch (param1->sideConditionCheckState) {
    case 0:
        while (param1->sideConditionCheckTemp < v1) {
            v2 = param1->monSpeedOrder[param1->sideConditionCheckTemp];

            if (param1->battlersSwitchingMask & sub_020787CC(v2)) {
                param1->sideConditionCheckTemp++;
                continue;
            }

            param1->sideConditionCheckTemp++;

            if (param1->fieldConditions.futureSightTurns[v2]) {
                if ((--param1->fieldConditions.futureSightTurns[v2] == 0) && (param1->battleMons[v2].curHP != 0)) {
                    param1->sideConditionsMask[ov16_0223E208(param0, v2)] &= (0x10 ^ 0xffffffff);
                    param1->msgBuffer.unk_02 = 475;
                    param1->msgBuffer.unk_01 = 10;
                    param1->msgBuffer.unk_04[0] = ov16_02255560(param1, v2);
                    param1->msgBuffer.unk_04[1] = param1->fieldConditions.futureSightMoveNum[v2];
                    param1->msgBattlerIdTemp = v2;
                    param1->msgBattlerIdAttacker = param1->fieldConditions.futureSightAttackerId[v2];
                    param1->msgMoveNumTemp = param1->fieldConditions.futureSightMoveNum[v2];
                    param1->hpCalcTemp = param1->fieldConditions.futureSightDamage[v2];
                    ov16_02251E1C(param1, 1, (0 + 121));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    return;
                }
            }
        }

        param1->sideConditionCheckState++;
        param1->sideConditionCheckTemp = 0;
    case 1:
        while (param1->sideConditionCheckTemp < v1) {
            v2 = param1->monSpeedOrder[param1->sideConditionCheckTemp];

            if (param1->battlersSwitchingMask & sub_020787CC(v2)) {
                param1->sideConditionCheckTemp++;
                continue;
            }

            param1->sideConditionCheckTemp++;

            if (param1->battleMons[v2].moveEffectsMask & 0x20) {
                if (param1->battleMons[v2].moveEffectsData.perishSongTurns == 0) {
                    param1->battleMons[v2].moveEffectsMask &= (0x20 ^ 0xffffffff);
                    param1->msgTemp = param1->battleMons[v2].moveEffectsData.perishSongTurns;
                    param1->hpCalcTemp = param1->battleMons[v2].curHP * -1;
                    param1->battleStatusMask |= 0x40;
                } else {
                    param1->msgTemp = param1->battleMons[v2].moveEffectsData.perishSongTurns;
                    param1->battleMons[v2].moveEffectsData.perishSongTurns--;
                }

                param1->msgBattlerIdTemp = v2;
                ov16_02251E1C(param1, 1, (0 + 102));
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }

        param1->sideConditionCheckState++;
        param1->sideConditionCheckTemp = 0;
    case 2:
        if (param1->fieldConditionsMask & 0x70000) {
            param1->fieldConditionsMask -= (1 << 16);

            if ((param1->fieldConditionsMask & 0x70000) == 0) {
                ov16_02251E1C(param1, 1, (0 + 251));
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }

        param1->sideConditionCheckState++;
        param1->sideConditionCheckTemp = 0;
        break;
    default:
        break;
    }

    param1->sideConditionCheckState = 0;
    param1->sideConditionCheckTemp = 0;
    param1->command = 12;
}

static void ov16_0224DC10 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (ov16_02250F98(param1, param1->command, param1->command) == 1) {
        return;
    }

    if (ov16_02250A48(param0, param1) == 1) {
        return;
    }

    if (ov16_0225079C(param0, param1) == 1) {
        return;
    }

    param1->totalTurns++;
    param1->meFirstTurnOrder++;

    ov16_022541C4(param1);
    ov16_02254990(param0, param1);

    param1->command = 2;
}

static void ov16_0224DC68 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;

    v0 = 0;

    param1->battlerIdAttacker = param1->battlerActionOrder[param1->turnOrderCounter];

    if (param1->turnFlags[param1->battlerIdAttacker].struggling) {
        param1->moveNumTemp = 165;
        v0 = 1;
    } else if ((param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMove) && (param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMove == param1->battleMons[param1->battlerIdAttacker].moves[param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMoveSlot])) {
        param1->moveNumTemp = param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMove;
        v0 = 1;
    } else if ((param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMove) && (param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMove != param1->battleMons[param1->battlerIdAttacker].moves[param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMoveSlot])) {
        param1->moveNumTemp = param1->battleMons[param1->battlerIdAttacker].moves[param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMoveSlot];
        param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMove = 0;
        param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredMoveSlot = 0;
        param1->battleMons[param1->battlerIdAttacker].moveEffectsData.encoredTurns = 0;
        v0 = 1;
    } else if (ov16_02259A28(param1, param1->battlerIdAttacker) == 0) {
        param1->moveNumTemp = param1->moveNumLockedInto[param1->battlerIdAttacker];
    } else if (param1->moveNumSelected[param1->battlerIdAttacker] != param1->battleMons[param1->battlerIdAttacker].moves[param1->moveSlot[param1->battlerIdAttacker]]) {
        param1->moveNumTemp = param1->battleMons[param1->battlerIdAttacker].moves[param1->moveSlot[param1->battlerIdAttacker]];
        v0 = 1;
    } else {
        param1->moveNumTemp = param1->battleMons[param1->battlerIdAttacker].moves[param1->moveSlot[param1->battlerIdAttacker]];
    }

    param1->moveNumCurr = param1->moveNumTemp;
    param1->command = 22;
    param1->battlerIdDefender = ov16_02253954(param0, param1, param1->battlerIdAttacker, param1->moveNumTemp, v0, 0);

    ov16_02266AA0(param0);
}

static void ov16_0224DDA8 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    UnkStruct_ov16_0224DDA8 * v0;
    int v1;

    param1->battlerIdAttacker = param1->battlerActionOrder[param1->turnOrderCounter];
    param1->battlerIdDefender = ov16_02257028(param0, param1, param1->battlerIdAttacker);

    v0 = (UnkStruct_ov16_0224DDA8 *)&param1->battlerActions[param1->battlerIdAttacker][2];

    if (ov16_0223E208(param0, param1->battlerIdAttacker)) {
        switch (param1->aiContext.usedItemType[param1->battlerIdAttacker >> 1]) {
        case 0:
            v1 = (0 + 289);
            break;
        case 1:
            v1 = (0 + 267);
            break;
        case 2:
            if ((param1->aiContext.usedItemCondition[param1->battlerIdAttacker >> 1] & 1) && (param1->aiContext.usedItemCondition[param1->battlerIdAttacker >> 1] & 0x3e)) {
                param1->msgTemp = 6;
            } else {
                param1->msgTemp = sub_020787EC(param1->aiContext.usedItemCondition[param1->battlerIdAttacker >> 1]);
            }

            v1 = (0 + 268);
            break;
        case 3:
            param1->msgTemp = param1->aiContext.usedItemCondition[param1->battlerIdAttacker >> 1];
            v1 = (0 + 269);
            break;
        case 4:
            v1 = (0 + 270);
            break;
        }

        param1->msgItemNumTemp = param1->aiContext.usedItemNums[param1->battlerIdAttacker >> 1];
    } else {
        switch (v0->unk_02) {
        case 1:
        case 0:
        case 3:
            if ((v0->unk_00 == 63) || (v0->unk_00 == 64)) {
                v1 = (0 + 222);
            } else {
                v1 = (0 + 223);
            }

            break;
        case 2:
            v1 = (0 + 11);

            if (((ov16_0223DF0C(param0) & 0x1) == 0) && ((ov16_0223DF0C(param0) & 0x400) == 0)) {
                sub_0207D60C(ov16_0223E1AC(param0), v0->unk_00, 1, 5);
                sub_0207DA1C(ov16_0223E1B0(param0), v0->unk_00, v0->unk_02);
            }

            break;
        }

        param1->msgItemNumTemp = v0->unk_00;
    }

    ov16_02251E1C(param1, 1, v1);

    param1->command = 21;
    param1->commandNext = 39;
    param1->moveStatusFlags |= 0x80000000;
}

static void ov16_0224DF08 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 9));

    param1->battlerIdAttacker = param1->battlerActionOrder[param1->turnOrderCounter];
    param1->battlerIdSwitched = param1->battlerIdAttacker;
    param1->command = 21;
    param1->commandNext = 40;
    param1->scriptTemp = 0;
    param1->moveStatusFlags |= 0x80000000;
}

static void ov16_0224DF4C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    param1->battlerIdAttacker = param1->battlerActionOrder[param1->turnOrderCounter];

    if ((ov16_0223E208(param0, param1->battlerIdAttacker)) && ((ov16_0223DF0C(param0) & 0x4) == 0)) {
        if (param1->battleMons[param1->battlerIdAttacker].statusVolatile & (0xe000 | 0x4000000)) {
            ov16_02251E1C(param1, 1, (0 + 286));
            param1->scriptCursor = 0;
            param1->command = 21;
            param1->commandNext = 39;
        } else {
            ov16_02251E1C(param1, 1, (0 + 230));
            param1->scriptCursor = 0;
            param1->command = 21;
            param1->commandNext = 43;
        }
    } else {
        if (ov16_02255DE8(param0, param1, param1->battlerIdAttacker)) {
            ov16_02251E1C(param1, 1, (0 + 3));
            param1->scriptCursor = 0;
            param1->command = 21;
            param1->commandNext = 43;
        } else {
            ov16_02251E1C(param1, 1, (0 + 8));
            param1->scriptCursor = 0;
            param1->command = 21;
            param1->commandNext = 39;
        }
    }
}

static void ov16_0224E010 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;

    ov16_02251E1C(param1, 1, (0 + 275));

    param1->battlerIdAttacker = 0;
    param1->battlerIdDefender = 1;
    param1->command = 21;
    param1->commandNext = 39;
    param1->msgItemNumTemp = 5;

    v0 = ov16_0223ED8C(param0) - 1;

    ov16_0223ED98(param0, v0);
    ov16_022661CC(param0, param1, 0);
}

static void ov16_0224E058 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 227));

    param1->battlerIdAttacker = 0;
    param1->battlerIdDefender = 1;
    param1->command = 21;
    param1->commandNext = 39;
    param1->scriptTemp = ov16_0223F4BC(param0) % 10;

    if (param1->safariCatchCount < 12) {
        param1->safariCatchCount++;
    }

    if (param1->scriptTemp != 0) {
        if (param1->safariEscapeCount < 12) {
            param1->safariEscapeCount++;
        }
    }
}

static void ov16_0224E0B8 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 228));

    param1->battlerIdAttacker = 0;
    param1->battlerIdDefender = 1;
    param1->command = 21;
    param1->commandNext = 39;
    param1->scriptTemp = ov16_0223F4BC(param0) % 10;

    if (param1->safariEscapeCount) {
        param1->safariEscapeCount--;
    }

    if (param1->scriptTemp != 0) {
        param1->msgTemp = 1;

        if (param1->safariCatchCount) {
            param1->safariCatchCount--;
        }
    }
}

static void ov16_0224E11C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 229));

    param1->battlerIdAttacker = 0;
    param1->battlerIdDefender = 1;
    param1->command = 21;
    param1->commandNext = 39;
}

static int ov16_0224E13C (UnkStruct_0207ADB4 * param0, BattleContext * param1, int * param2)
{
    int v0, v1;
    u32 v2;
    u8 v3 = 0;
    UnkStruct_02025E6C * v4;

    v2 = ov16_0223DF0C(param0);
    v4 = ov16_0223E16C(param0, 0);

    if (v2 & (0x4 | 0x80)) {
        return 0;
    }

    if (ov16_0223E208(param0, param1->battlerIdAttacker)) {
        return 0;
    }

    if ((v2 & 0x40) && (ov16_0223E1F8(param0, param1->battlerIdAttacker) == 4)) {
        return 0;
    }

    if ((ov16_02259ADC(param0, param1)) == 1) {
        return 0;
    }

    if (ov16_02259A28(param1, param1->battlerIdAttacker) == 0) {
        return 0;
    }

    if ((param1->moveNumCurr == 117) && (param1->battleStatusMask & 0x200)) {
        return 0;
    }

    if (sub_02025F58(v4) >= 8) {
        return 0;
    }

    v3 = 10;

    if (sub_02025F58(v4) >= 2) {
        v3 = 30;
    }

    if (sub_02025F58(v4) >= 4) {
        v3 = 50;
    }

    if (sub_02025F58(v4) >= 6) {
        v3 = 70;
    }

    if (param1->battleMons[param1->battlerIdAttacker].level <= v3) {
        return 0;
    }

    v0 = ((ov16_0223F4BC(param0) & 0xff) * (param1->battleMons[param1->battlerIdAttacker].level + v3)) >> 8;

    if (v0 < v3) {
        return 0;
    }

    if (param1->moveNumCurr == 99) {
        param1->battleMons[param1->battlerIdAttacker].statusVolatile &= (0x800000 ^ 0xffffffff);
    }

    if ((param1->battleMons[param1->battlerIdAttacker].status & 0x7) && ((param1->moveNumCurr == 173) || (param1->moveNumCurr == 214))) {
        param2[0] = (0 + 254);
        return 1;
    }

    v0 = ((ov16_0223F4BC(param0) & 0xff) * (param1->battleMons[param1->battlerIdAttacker].level + v3)) >> 8;

    if (v0 < v3) {
        v0 = ov16_02254A6C(param0, param1, param1->battlerIdAttacker, sub_020787CC(param1->moveSlot[param1->battlerIdAttacker]), 0xffffffff);

        if (v0 == 0xf) {
            param2[0] = (0 + 255);
            return 1;
        }

        do {
            v1 = ov16_0223F4BC(param0) & 3;
        } while (v0 & sub_020787CC(v1));

        param1->moveSlot[param1->battlerIdAttacker] = v1;
        param1->moveNumTemp = param1->battleMons[param1->battlerIdAttacker].moves[param1->moveSlot[param1->battlerIdAttacker]];
        param1->moveNumCurr = param1->moveNumTemp;
        param1->battlerIdDefender = ov16_02253954(param0, param1, param1->battlerIdAttacker, param1->moveNumTemp, 1, 0);

        if (param1->battlerIdDefender == 0xff) {
            param1->battlerActions[param1->battlerIdAttacker][1] = ov16_02257028(param0, param1, param1->battlerIdAttacker);
        } else {
            param1->battlerActions[param1->battlerIdAttacker][1] = param1->battlerIdDefender;
        }

        param2[0] = (0 + 256);
        param1->multiHitCheckFlags |= 0x1;

        return 2;
    }

    v3 = param1->battleMons[param1->battlerIdAttacker].level - v3;
    v0 = ov16_0223F4BC(param0) & 0xff;

    if (((v0 < v3) && ((param1->battleMons[param1->battlerIdAttacker].status & 0xff) == 0)) && (ov16_02255A4C(param1, param1->battlerIdAttacker) != 72) && (ov16_02255A4C(param1, param1->battlerIdAttacker) != 15)) {
        if ((param1->fieldConditionsMask & 0xf00) == 0) {
            param2[0] = (0 + 257);
            return 1;
        }
    }

    v0 -= v3;

    if (v0 < v3) {
        param1->battlerIdDefender = param1->battlerIdAttacker;
        param1->msgBattlerIdTemp = param1->battlerIdDefender;
        param1->hpCalcTemp = ov16_0225A280(param0, param1, 1, 0, 0, 40, 0, param1->battlerIdAttacker, param1->battlerIdAttacker, 1);
        param1->hpCalcTemp = ov16_0225AEB8(param0, param1, param1->hpCalcTemp);
        param1->hpCalcTemp *= -1;
        param2[0] = (0 + 258);
        param1->battleStatusMask |= 0x2;
        return 3;
    }

    param2[0] = (0 + 255);

    return 1;
}

static BOOL ov16_0224E458 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0 = 1;
    int v1;

    if ((param1->selfTurnFlags[param1->battlerIdAttacker].skipPressureCheck == 0) && (param1->battlerIdDefender != 0xff)) {
        if (param1->moveNumTemp == 286) {
            v0 += ov16_022555A4(param0, param1, 3, param1->battlerIdAttacker, 46);
        } else {
            switch (param1->aiContext.moveTable[param1->moveNumTemp].unk_08) {
            case 0x8:
            case 0x40:
                v0 += ov16_022555A4(param0, param1, 9, param1->battlerIdAttacker, 46);
                break;
            case 0x4:
            case 0x80:
                v0 += ov16_022555A4(param0, param1, 3, param1->battlerIdAttacker, 46);
                break;
            case 0x20:
            case 0x10:
            case 0x200:
            case 0x100:
                break;
            default:
                if ((param1->battlerIdAttacker != param1->battlerIdDefender) && (ov16_02255A4C(param1, param1->battlerIdDefender) == 46)) {
                    v0++;
                }

                break;
            }
        }
    }

    v1 = ov16_02254EE0(&param1->battleMons[param1->battlerIdAttacker], param1->moveNumTemp);

    if ((param1->turnFlags[param1->battlerIdAttacker].ppDecremented == 0) && (param1->turnFlags[param1->battlerIdAttacker].struggling == 0)) {
        param1->turnFlags[param1->battlerIdAttacker].ppDecremented = 1;

        if ((param1->battleMons[param1->battlerIdAttacker].ppCur[v1]) && (v1 < 4)) {
            if (param1->battleMons[param1->battlerIdAttacker].ppCur[v1] > v0) {
                param1->battleMons[param1->battlerIdAttacker].ppCur[v1] -= v0;
            } else {
                param1->battleMons[param1->battlerIdAttacker].ppCur[v1] = 0;
            }

            ov16_02253EC0(param0, param1, param1->battlerIdAttacker);
        } else {
            param1->moveStatusFlags |= 0x200;
        }
    } else if ((param1->battleMons[param1->battlerIdAttacker].ppCur[v1] == 0) && ((param1->battleStatusMask & 0x200) == 0) && ((param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x1000) == 0) && ((param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0xc00) == 0) && ((param1->fieldConditionsMask & (sub_020787CC(param1->battlerIdAttacker) << 8)) == 0) && (v1 < 4)) {
        param1->moveStatusFlags |= 0x200;
    }

    return 0;
}

static BOOL ov16_0224E5F4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    BOOL v0;
    BOOL v1;

    v0 = 0;
    v1 = 0;

    if (((param1->battlerIdDefender == 0xff) && (ov16_0225582C(param1, param1->moveNumCurr) == 0)) || ((param1->battlerIdDefender == 0xff) && (ov16_0225582C(param1, param1->moveNumCurr) == 1) && ((param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x1000) || (param1->battleStatusMask & 0x200)))) {
        ov16_02251E1C(param1, 1, (0 + 281));
        param1->commandNext = 38;
        param1->command = 21;
        v0 = 1;
    }

    if (((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_00 == 151) && (param1->fieldConditionsMask & 0x30))) {
        v1 = 1;
    }

    if ((param1->battlerIdDefender == 0xff) && (ov16_0225582C(param1, param1->moveNumCurr) == 1) && (v0 == 0) && (v1 == 0) && (ov16_02258AB8(param1, param1->battlerIdAttacker) != 99) && ((param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x1000) == 0)) {
        param1->battlerIdDefender = param1->battlerIdAttacker;
    }

    return v0;
}

static BOOL ov16_0224E6F4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (((param1->aiContext.moveTable[param1->moveNumCurr].unk_08 != 0x10) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_08 != 0x20) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_03) && ((param1->battleStatusMask & 0x8000) == 0) && ((param1->battleStatusMask & 0x20) == 0)) || (param1->moveNumCurr == 86)) {
        param1->damage = ov16_02254FA8(param0, param1, param1->moveNumCurr, param1->moveType, param1->battlerIdAttacker, param1->battlerIdDefender, param1->damage, &param1->moveStatusFlags);

        if (param1->moveStatusFlags & 0x8) {
            param1->moveFailFlags[param1->battlerIdAttacker].noEffect = 1;
        }
    }

    return 0;
}

static BOOL ov16_0224E784 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v0 = param1->aiContext.moveTable[param1->moveNumCurr].unk_00;
    v1 = 0;

    do {
        switch (param1->statusCheckState) {
        case 0:
            param1->battleMons[param1->battlerIdAttacker].statusVolatile &= (0x2000000 ^ 0xffffffff);
            param1->battleMons[param1->battlerIdAttacker].moveEffectsMask &= (0x4000 ^ 0xffffffff);
            param1->statusCheckState++;
            break;
        case 1:
            if (param1->battleMons[param1->battlerIdAttacker].status & 0x7) {
                {
                    int v2;

                    if ((param1->fieldConditionsMask & 0xf00) && (ov16_02255A4C(param1, param1->battlerIdAttacker) != 43)) {
                        param1->msgBattlerIdTemp = param1->battlerIdAttacker;
                        ov16_02251E1C(param1, 1, (0 + 19));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        v1 = 2;
                    } else {
                        if (((param1->moveNumCurr != 214) && (param1->moveNumTemp == 214)) == 0) {
                            if (ov16_02255A4C(param1, param1->battlerIdAttacker) == 48) {
                                v2 = 2;
                            } else {
                                v2 = 1;
                            }

                            if ((param1->battleMons[param1->battlerIdAttacker].status & 0x7) < v2) {
                                param1->battleMons[param1->battlerIdAttacker].status &= (0x7 ^ 0xffffffff);
                            } else {
                                param1->battleMons[param1->battlerIdAttacker].status -= v2;
                            }

                            if (param1->battleMons[param1->battlerIdAttacker].status & 0x7) {
                                if ((param1->moveNumCurr != 173) && (param1->moveNumTemp != 214)) {
                                    ov16_02251E1C(param1, 1, (0 + 20));

                                    param1->command = 21;
                                    param1->commandNext = 38;

                                    v1 = 2;
                                }
                            } else {
                                param1->msgBattlerIdTemp = param1->battlerIdAttacker;
                                ov16_02251E1C(param1, 1, (0 + 19));

                                param1->commandNext = param1->command;
                                param1->command = 21;

                                v1 = 2;
                            }
                        }
                    }
                }
            }

            param1->statusCheckState++;
            break;
        case 2:
            if (param1->battleMons[param1->battlerIdAttacker].status & 0x20) {
                if (ov16_0223F4BC(param0) % 5 != 0) {
                    if ((v0 != 125) && (v0 != 253)) {
                        ov16_02251E1C(param1, 1, (0 + 28));

                        param1->command = 21;
                        param1->commandNext = 38;

                        v1 = 1;
                    }
                } else {
                    param1->msgBattlerIdTemp = param1->battlerIdAttacker;
                    ov16_02251E1C(param1, 1, (0 + 29));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 2;
                }
            }

            param1->statusCheckState++;
            break;
        case 3:
            if (ov16_02255EC0(param1, param1->battlerIdAttacker) == 1) {
                ov16_02251E1C(param1, 1, (0 + 191));
                param1->command = 21;

                param1->commandNext = 38;
                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 4:
            if (param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x400000) {
                param1->battleMons[param1->battlerIdAttacker].statusVolatile &= (0x400000 ^ 0xffffffff);
                ov16_02251E1C(param1, 1, (0 + 65));
                param1->command = 21;

                param1->commandNext = 38;
                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 5:
            if (param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x8) {
                param1->battleMons[param1->battlerIdAttacker].statusVolatile &= (0x8 ^ 0xffffffff);
                param1->moveFailFlags[param1->battlerIdAttacker].flinched = 1;
                ov16_02251E1C(param1, 1, (0 + 15));
                param1->command = 21;
                param1->commandNext = 38;
                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 6:
            if (param1->battleMons[param1->battlerIdAttacker].moveEffectsData.disabledMove == param1->moveNumTemp) {
                param1->moveFailFlags[param1->battlerIdAttacker].disabled = 1;
                ov16_02251E1C(param1, 1, (0 + 71));

                param1->command = 21;
                param1->commandNext = 38;

                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 7:
            if ((param1->battleMons[param1->battlerIdAttacker].moveEffectsData.tauntedTurns) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_03 == 0)) {
                param1->moveFailFlags[param1->battlerIdAttacker].taunted = 1;
                ov16_02251E1C(param1, 1, (0 + 133));
                param1->command = 21;
                param1->commandNext = 38;
                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 8:
            if (ov16_02255EF4(param0, param1, param1->battlerIdAttacker, param1->moveNumCurr)) {
                param1->moveFailFlags[param1->battlerIdAttacker].imprisoned = 1;
                ov16_02251E1C(param1, 1, (0 + 144));
                param1->command = 21;

                param1->commandNext = 38;
                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 9:
            if (ov16_02256044(param0, param1, param1->battlerIdAttacker, param1->moveNumCurr)) {
                param1->moveFailFlags[param1->battlerIdAttacker].gravityActive = 1;
                ov16_02251E1C(param1, 1, (0 + 157));
                param1->command = 21;
                param1->commandNext = 38;
                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 10:
            if (ov16_02256078(param0, param1, param1->battlerIdAttacker, param1->moveNumCurr)) {
                param1->moveFailFlags[param1->battlerIdAttacker].healBlocked = 1;
                ov16_02251E1C(param1, 1, (0 + 174));
                param1->command = 21;
                param1->commandNext = 38;
                v1 = 1;
            }

            param1->statusCheckState++;
            break;
        case 11:
            param1->statusCheckState++;

            if (param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x7) {
                param1->battleMons[param1->battlerIdAttacker].statusVolatile -= 0x1;

                if (param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x7) {
                    if (ov16_0223F4BC(param0) & 1) {
                        ov16_02251E1C(param1, 1, (0 + 38));
                        param1->commandNext = param1->command;
                        param1->command = 21;
                        v1 = 2;
                    } else {
                        param1->moveFailFlags[param1->battlerIdAttacker].confused = 1;
                        param1->battlerIdDefender = param1->battlerIdAttacker;
                        param1->msgBattlerIdTemp = param1->battlerIdDefender;
                        param1->hpCalcTemp = ov16_0225A280(param0, param1, 165, 0, 0, 40, 0, param1->battlerIdAttacker, param1->battlerIdAttacker, 1);
                        param1->hpCalcTemp = ov16_0225AEB8(param0, param1, param1->hpCalcTemp);
                        param1->hpCalcTemp *= -1;
                        ov16_02251E1C(param1, 1, (0 + 39));
                        param1->command = 21;
                        param1->commandNext = 33;
                        v1 = 1;
                    }
                } else {
                    ov16_02251E1C(param1, 1, (0 + 40));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 2;
                }
            }
            break;
        case 12:
            if ((param1->battleMons[param1->battlerIdAttacker].status & 0x40) && (ov16_02255A4C(param1, param1->battlerIdAttacker) != 98)) {
                if (ov16_0223F4BC(param0) % 4 == 0) {
                    param1->moveFailFlags[param1->battlerIdAttacker].paralyzed = 1;
                    ov16_02251E1C(param1, 1, (0 + 32));
                    param1->command = 21;
                    param1->commandNext = 38;
                    v1 = 1;
                }
            }

            param1->statusCheckState++;
            break;
        case 13:
            if (param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0xf0000) {
                param1->msgBattlerIdTemp = sub_020787EC((param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0xf0000) >> 16);

                if (ov16_0223F4BC(param0) & 1) {
                    ov16_02251E1C(param1, 1, (0 + 107));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 2;
                } else {
                    param1->moveFailFlags[param1->battlerIdAttacker].infatuated = 1;
                    ov16_02251E1C(param1, 1, (0 + 108));
                    param1->command = 21;
                    param1->commandNext = 38;
                    v1 = 1;
                }
            }

            param1->statusCheckState++;
            break;
        case 14:
            param1->statusCheckState++;

            if (param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x300) {
                param1->battleMons[param1->battlerIdAttacker].statusVolatile -= 0x100;

                if ((param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x300) == 0) {
                    if (param1->storedDamage[param1->battlerIdAttacker]) {
                        param1->damage = param1->storedDamage[param1->battlerIdAttacker] * 2;

                        if (param1->battleMons[param1->lastHitByBattler[param1->battlerIdAttacker]].curHP) {
                            param1->battlerIdDefender = param1->lastHitByBattler[param1->battlerIdAttacker];
                        } else {
                            param1->battlerIdDefender = ov16_02257028(param0, param1, param1->battlerIdAttacker);

                            if (param1->battleMons[param1->battlerIdDefender].curHP == 0) {
                                ov16_02251E1C(param1, 1, (0 + 282));
                                param1->commandNext = 38;
                                param1->command = 21;
                                v1 = 2;
                                break;
                            }
                        }
                    }
                }

                ov16_02251E1C(param1, 1, (0 + 36));

                param1->commandNext = param1->command;
                param1->command = 21;

                v1 = 2;
            }
            break;
        case 15:
            if (param1->battleMons[param1->battlerIdAttacker].status & 0x20) {
                if ((v0 == 125) || (v0 == 253)) {
                    ov16_02251E1C(param1, 1, (0 + 30));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v1 = 2;
                }
            }

            param1->statusCheckState++;
            break;
        case 16:
            param1->statusCheckState = 0;
            v1 = 3;
            break;
        }
    } while (v1 == 0);

    ov16_02253EC0(param0, param1, param1->battlerIdAttacker);

    if (v1 == 1) {
        param1->battleStatusMask |= 0x2;
        param1->moveStatusFlags |= 0x80000000;
    }

    return v1 != 3;
}

static BOOL ov16_0224EE88 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v0 = 0;

    do {
        switch (param1->abilityCheckState) {
        case 0:
            v1 = ov16_02256148(param1, param1->battlerIdAttacker, param1->battlerIdDefender);

            if (((v1) && ((param1->moveStatusFlags & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) || (v1 == (0 + 181))) {
                ov16_02251E1C(param1, 1, v1);
                param1->commandNext = param1->command;
                param1->command = 21;
                param1->moveStatusFlags |= 0x80000000;
                v0 = 1;
            }

            param1->abilityCheckState++;
            break;
        case 1:
            param1->abilityCheckState = 0;
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    return v0 != 2;
}

static BOOL ov16_0224EF00 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 278));

    param1->commandNext = param1->command;
    param1->command = 21;

    return 1;
}

static const UnkStruct_ov16_0226EAD0 Unk_ov16_0226EAD0[] = {
    {0x21, 0x64},
    {0x24, 0x64},
    {0x2B, 0x64},
    {0x32, 0x64},
    {0x3C, 0x64},
    {0x4B, 0x64},
    {0x1, 0x1},
    {0x85, 0x64},
    {0xA6, 0x64},
    {0x2, 0x1},
    {0xE9, 0x64},
    {0x85, 0x32},
    {0x3, 0x1}
};

static BOOL ov16_0224EF20 (UnkStruct_0207ADB4 * param0, BattleContext * param1, int param2, int param3, int param4)
{
    u16 v0;
    s8 v1;
    s8 v2, v3;
    int v4;
    int v5;
    u8 v6;
    u8 v7;

    if (ov16_0223DF0C(param0) & 0x400) {
        return 0;
    }

    if (ov16_02255A4C(param1, param2) == 96) {
        v6 = 0;
    } else if (param1->moveType) {
        v6 = param1->moveType;
    } else {
        v6 = param1->aiContext.moveTable[param4].unk_04;
    }

    v7 = param1->aiContext.moveTable[param4].unk_02;
    v2 = param1->battleMons[param2].statBoosts[0x6] - 6;
    v3 = 6 - param1->battleMons[param3].statBoosts[0x7];

    if (ov16_02255A4C(param1, param2) == 86) {
        v2 *= 2;
    }

    if (ov16_02255AB4(param1, param2, param3, 86) == 1) {
        v3 *= 2;
    }

    if (ov16_02255AB4(param1, param2, param3, 109) == 1) {
        v2 = 0;
    }

    if (ov16_02255A4C(param1, param2) == 109) {
        v3 = 0;
    }

    if (((param1->battleMons[param3].statusVolatile & 0x20000000) || (param1->battleMons[param3].moveEffectsMask & 0x400000)) && (v3 < 0)) {
        v3 = 0;
    }

    v1 = 6 + v3 + v2;

    if (v1 < 0) {
        v1 = 0;
    }

    if (v1 > 12) {
        v1 = 12;
    }

    v0 = param1->aiContext.moveTable[param4].unk_05;

    if (v0 == 0) {
        return 0;
    }

    if (param1->battleStatusMask & 0x20) {
        return 0;
    }

    if (param1->battleStatusMask & 0x400) {
        return 0;
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if ((param1->fieldConditionsMask & 0x30) && (param1->aiContext.moveTable[param4].unk_00 == 152)) {
            v0 = 50;
        }
    }

    v0 *= Unk_ov16_0226EAD0[v1].unk_00;
    v0 /= Unk_ov16_0226EAD0[v1].unk_01;

    if (ov16_02255A4C(param1, param2) == 14) {
        v0 = v0 * 130 / 100;
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if (param1->fieldConditionsMask & 0xc) {
            if (ov16_02255AB4(param1, param2, param3, 8) == 1) {
                v0 = v0 * 80 / 100;
            }
        }

        if (param1->fieldConditionsMask & 0xc0) {
            if (ov16_02255AB4(param1, param2, param3, 81) == 1) {
                v0 = v0 * 80 / 100;
            }
        }

        if (param1->fieldConditionsMask & 0x8000) {
            v0 = v0 * 6 / 10;
        }
    }

    if ((ov16_02255A4C(param1, param2) == 55) && (v7 == 0)) {
        v0 = v0 * 80 / 100;
    }

    if ((ov16_02255AB4(param1, param2, param3, 77) == 1) && (param1->battleMons[param3].statusVolatile & 0x7)) {
        v0 = v0 * 50 / 100;
    }

    v4 = ov16_02258AB8(param1, param3);
    v5 = ov16_02258ACC(param1, param3, 0);

    if (v4 == 48) {
        v0 = v0 * (100 - v5) / 100;
    }

    v4 = ov16_02258AB8(param1, param2);
    v5 = ov16_02258ACC(param1, param2, 0);

    if (v4 == 93) {
        v0 = v0 * (100 + v5) / 100;
    }

    if ((v4 == 104) && (ov16_022588A4(param1, param3) == 1)) {
        v0 = v0 * (100 + v5) / 100;
    }

    if (param1->battleMons[param2].moveEffectsData.micleBerryActive) {
        param1->battleMons[param2].moveEffectsData.micleBerryActive = 0;
        v0 = v0 * 120 / 100;
    }

    if (param1->fieldConditionsMask & 0x7000) {
        v0 = v0 * 10 / 6;
    }

    if ((ov16_0223F4BC(param0) % 100) + 1 > v0) {
        param1->moveStatusFlags |= 0x1;
    }

    return 0;
}

static BOOL ov16_0224F274 (UnkStruct_0207ADB4 * param0, BattleContext * param1, int param2, int param3, int param4)
{
    if (param1->battleStatusMask & 0x20) {
        return 0;
    }

    if ((param1->turnFlags[param3].protecting) && (param1->aiContext.moveTable[param4].unk_0B & 0x2)) {
        if ((param4 != 174) || (ov16_02255950(param1, param4, param2) == 1)) {
            if ((ov16_0225582C(param1, param4) == 0) || (param1->battleStatusMask & 0x200)) {
                ov16_02253F20(param0, param1, param2);
                param1->moveStatusFlags |= 0x8000;
                return 0;
            }
        }
    }

    if ((param1->battleStatusMask & 0x400) == 0) {
        if (((param1->battleMons[param3].moveEffectsMask & 0x18) && (param1->battleMons[param3].moveEffectsData.battlerIdLockOn == param2)) || (ov16_02255A4C(param1, param2) == 99) || (ov16_02255A4C(param1, param3) == 99)) {
            param1->moveStatusFlags &= (0x1 ^ 0xffffffff);
            return 0;
        }
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if ((param1->fieldConditionsMask & 0x3) && (param1->aiContext.moveTable[param4].unk_00 == 152)) {
            param1->moveStatusFlags &= (0x1 ^ 0xffffffff);
        }

        if ((param1->fieldConditionsMask & 0xc0) && (param1->aiContext.moveTable[param4].unk_00 == 260)) {
            param1->moveStatusFlags &= (0x1 ^ 0xffffffff);
        }
    }

    if (((param1->moveStatusFlags & 0x400) == 0) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_08 != 0x80)) {
        if ((((param1->battleStatusMask & 0x4) == 0) && (param1->battleMons[param3].moveEffectsMask & 0x40)) || (((param1->battleStatusMask & 0x80000) == 0) && (param1->battleMons[param3].moveEffectsMask & 0x20000000)) || (((param1->battleStatusMask & 0x8) == 0) && (param1->battleMons[param3].moveEffectsMask & 0x80)) || (((param1->battleStatusMask & 0x10) == 0) && (param1->battleMons[param3].moveEffectsMask & 0x40000))) {
            param1->moveStatusFlags |= 0x10000;
        }
    }

    return 0;
}

static BOOL ov16_0224F460 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    v2 = ov16_0223DF1C(param0);

    if (param1->battlerIdDefender == 0xff) {
        return 0;
    }

    if (((param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->turnFlags[param1->battlerIdDefender].magicCoatActive) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_0B & 0x4)) {
        param1->turnFlags[param1->battlerIdDefender].magicCoatActive = 0;
        param1->moveNumProtect[param1->battlerIdAttacker] = 0;
        param1->moveNumPrevByBattler[param1->battlerIdAttacker] = param1->moveNumTemp;
        param1->moveNumPrev = param1->moveNumTemp;
        param1->battleStatusMask |= 0x100000;
        ov16_02251E1C(param1, 1, (0 + 139));
        param1->commandNext = param1->command;
        param1->command = 21;
        ov16_0225B408(param1, param1->battlerIdDefender, param1->battlerIdAttacker);
        return 1;
    }

    for (v0 = 0; v0 < v2; v0++) {
        v1 = param1->monSpeedOrder[v0];

        if (((param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->turnFlags[v1].snatching) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_0B & 0x8)) {
            param1->msgBattlerIdTemp = v1;
            param1->turnFlags[v1].snatching = 0;

            if ((param1->battleStatusMask & 0x100000) == 0) {
                param1->moveNumProtect[param1->battlerIdAttacker] = 0;
                param1->moveNumPrevByBattler[param1->battlerIdAttacker] = param1->moveNumTemp;
                param1->moveNumPrev = param1->moveNumTemp;
                param1->battleStatusMask |= 0x100000;
            }

            ov16_02251E1C(param1, 1, (0 + 146));

            param1->commandNext = param1->command;
            param1->command = 21;

            ov16_0225B408(param1, v1, param1->battlerIdAttacker);
            return 1;
        }
    }

    return 0;
}

static void ov16_0224F5CC (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (ov16_022405FC(param0, param1) == 1) {
        param1->scriptCursor = 0;
        param1->command = param1->commandNext;
    }
}

static void ov16_0224F5E8 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    switch (param1->beforeMoveCheckState) {
    case 0:
        ov16_0224EF00(param0, param1);
        param1->beforeMoveCheckState++;
        return;
        break;
    case 1:
        if ((param1->multiHitCheckFlags & 0x4) == 0) {
            if (ov16_0224E784(param0, param1) == 1) {
                return;
            }
        }

        param1->beforeMoveCheckState++;
    case 2:
    {
        int v0;
        int v1;

        if ((param1->multiHitCheckFlags & 0x1) == 0) {
            v0 = ov16_0224E13C(param0, param1, &v1);

            if (v0) {
                switch (v0) {
                case 1:
                    param1->commandNext = 38;
                    break;
                case 2:
                    param1->commandNext = param1->command;
                    break;
                case 3:
                    param1->commandNext = 33;
                    break;
                }

                param1->command = 21;
                ov16_02251E1C(param1, 1, v1);
                return;
            }
        }
    }
        param1->beforeMoveCheckState++;
    case 3:
        if ((param1->multiHitCheckFlags & 0x8) == 0) {
            if (ov16_0224E458(param0, param1) == 1) {
                return;
            }
        }

        param1->beforeMoveCheckState++;
    case 4:
        if (ov16_0224E5F4(param0, param1) == 1) {
            return;
        }

        param1->beforeMoveCheckState++;
    case 5:
        if ((param1->multiHitCheckFlags & 0x80) == 0) {
            if (ov16_0224F460(param0, param1) == 1) {
                return;
            }
        }

        param1->beforeMoveCheckState++;
    case 6:
        ov16_02253C98(param0, param1, param1->battlerIdAttacker, param1->moveNumCurr);
        param1->beforeMoveCheckState = 0;
    }

    if (param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) {
        param1->command = 25;
    } else {
        param1->battleStatusMask2 |= 0x40;
        ov16_02251E1C(param1, 0, param1->moveNumCurr);
        param1->command = 21;
        param1->commandNext = 23;
        ov16_022560B0(param0, param1);
    }

    ov16_02259868(param0, param1);
}

static void ov16_0224F734 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    switch (param1->moveExecutionCheckState) {
    case 0:
        param1->moveExecutionCheckState++;

        if (ov16_0224E5F4(param0, param1) == 1) {
            return;
        }

    case 1:
        param1->moveExecutionCheckState++;

        if (ov16_02253E3C(param0, param1) == 1) {
            return;
        }
    case 2:
        if (((param1->multiHitCheckFlags & 0x20) == 0) && (param1->battlerIdDefender != 0xff)) {
            if (ov16_0224EF20(param0, param1, param1->battlerIdAttacker, param1->battlerIdDefender, param1->moveNumCurr) == 1) {
                return;
            }
        }

        param1->moveExecutionCheckState++;
    case 3:
        if (((param1->multiHitCheckFlags & 0x40) == 0) && (param1->battlerIdDefender != 0xff)) {
            if (ov16_0224F274(param0, param1, param1->battlerIdAttacker, param1->battlerIdDefender, param1->moveNumCurr) == 1) {
                return;
            }
        }

        param1->moveExecutionCheckState++;
    case 4:
        if (((param1->multiHitCheckFlags & 0x2) == 0) && (param1->battlerIdDefender != 0xff)) {
            if (ov16_0224E6F4(param0, param1) == 1) {
                return;
            }
        }

        param1->moveExecutionCheckState++;
    case 5:
        if (((param1->multiHitCheckFlags & 0x10) == 0) && (param1->battlerIdDefender != 0xff)) {
            if (ov16_0224EE88(param0, param1) == 1) {
                return;
            }
        }

        param1->moveExecutionCheckState++;
    case 6:
        param1->moveExecutionCheckState = 0;
        break;
    }

    param1->command = 24;
}

static void ov16_0224F824 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;

    if (ov16_0225366C(param0, param1, &v0) == 1) {
        ov16_02251E1C(param1, 1, v0);
        param1->command = 21;
        param1->commandNext = 25;
        return;
    } else {
        param1->command = 25;
    }
}

static void ov16_0224F854 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (param1->moveStatusFlags & 0x80000000) {
        param1->command = 34;
    } else if (param1->moveStatusFlags & 0x200) {
        ov16_02251E1C(param1, 1, (0 + 42));
        param1->command = 21;
        param1->commandNext = 38;
    } else if ((param1->multiHitLoop) && (param1->moveStatusFlags & 0x1)) {
        param1->moveStatusFlags &= (0x1 ^ 0xffffffff);
        param1->moveStatusFlags |= 0x4000;
        param1->command = 28;
    } else if (param1->moveStatusFlags & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) {
        ov16_02251E1C(param1, 1, (0 + 7));
        param1->command = 21;
        param1->commandNext = 33;
    } else {
        param1->command = 26;
    }
}

static void ov16_0224F8D4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 1));
    param1->command = 21;
    param1->commandNext = 27;
}

static void ov16_0224F8EC (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;

    if (param1->moveStatusFlags & 0x20) {
        param1->damage = param1->battleMons[param1->battlerIdDefender].maxHP * -1;
    }

    if (param1->damage) {
        v0 = ov16_02258AB8(param1, param1->battlerIdDefender);
        v1 = ov16_02258ACC(param1, param1->battlerIdDefender, 0);

        GF_ASSERT(param1->damage < 0);

        if (ov16_0223E208(param0, param1->battlerIdAttacker) == ov16_0223E208(param0, param1->battlerIdDefender)) {
            ov16_022666BC(param0, param1->battlerIdAttacker, 0, (((70 + 1)) + 26));
        }

        param1->lastHitByBattler[param1->battlerIdDefender] = param1->battlerIdAttacker;

        if ((param1->battleMons[param1->battlerIdDefender].statusVolatile & 0x1000000) && (param1->damage < 0)) {
            if ((param1->battleMons[param1->battlerIdDefender].moveEffectsData.substituteHP + param1->damage) <= 0) {
                param1->selfTurnFlags[param1->battlerIdAttacker].shellBellDamageDealt += (param1->battleMons[param1->battlerIdDefender].moveEffectsData.substituteHP * -1);
                param1->battleMons[param1->battlerIdDefender].statusVolatile &= (0x1000000 ^ 0xffffffff);
                param1->hitDamage = param1->battleMons[param1->battlerIdDefender].moveEffectsData.substituteHP * -1;
                param1->battleMons[param1->battlerIdDefender].moveEffectsData.substituteHP = 0;
            } else {
                param1->selfTurnFlags[param1->battlerIdAttacker].shellBellDamageDealt += param1->damage;
                param1->battleMons[param1->battlerIdDefender].moveEffectsData.substituteHP += param1->damage;
                param1->hitDamage = param1->damage;
            }

            param1->selfTurnFlags[param1->battlerIdDefender].statusFlags |= 0x8;
            param1->msgBattlerIdTemp = param1->battlerIdDefender;

            ov16_02251E1C(param1, 1, (0 + 90));

            param1->command = 21;
            param1->commandNext = 28;
        } else {
            if (param1->aiContext.moveTable[param1->moveNumCurr].unk_00 == 101) {
                if ((param1->battleMons[param1->battlerIdDefender].curHP + param1->damage) <= 0) {
                    param1->damage = (param1->battleMons[param1->battlerIdDefender].curHP - 1) * -1;
                }
            }

            if (param1->turnFlags[param1->battlerIdDefender].enduring == 0) {
                if ((v0 == 65) && ((ov16_0223F4BC(param0) % 100) < v1)) {
                    param1->selfTurnFlags[param1->battlerIdDefender].focusItemActivated = 1;
                }

                if ((v0 == 103) && (param1->battleMons[param1->battlerIdDefender].curHP == param1->battleMons[param1->battlerIdDefender].maxHP)) {
                    param1->selfTurnFlags[param1->battlerIdDefender].focusItemActivated = 1;
                }
            }

            if ((param1->turnFlags[param1->battlerIdDefender].enduring) || (param1->selfTurnFlags[param1->battlerIdDefender].focusItemActivated)) {
                if ((param1->battleMons[param1->battlerIdDefender].curHP + param1->damage) <= 0) {
                    param1->damage = (param1->battleMons[param1->battlerIdDefender].curHP - 1) * -1;

                    if (param1->turnFlags[param1->battlerIdDefender].enduring) {
                        param1->moveStatusFlags |= 0x80;
                    } else {
                        param1->moveStatusFlags |= 0x100;
                    }
                }
            }

            param1->storedDamage[param1->battlerIdDefender] += param1->damage;

            if (param1->battleMons[param1->battlerIdDefender].timesDamaged < 255) {
                param1->battleMons[param1->battlerIdDefender].timesDamaged++;
            }

            if (param1->aiContext.moveTable[param1->moveNumCurr].unk_02 == 0) {
                param1->turnFlags[param1->battlerIdDefender].physicalDamageTakenByAttacker[param1->battlerIdAttacker] = param1->damage;
                param1->turnFlags[param1->battlerIdDefender].physicalDamageLastAttacker = param1->battlerIdAttacker;
                param1->turnFlags[param1->battlerIdDefender].physicalDamageAttackerMask |= sub_020787CC(param1->battlerIdAttacker);
                param1->selfTurnFlags[param1->battlerIdDefender].physicalDamageTaken = param1->damage;
                param1->selfTurnFlags[param1->battlerIdDefender].physicalDamageTakenLastAttacker = param1->battlerIdAttacker;
            } else if (param1->aiContext.moveTable[param1->moveNumCurr].unk_02 == 1) {
                param1->turnFlags[param1->battlerIdDefender].specialDamageTakenByAttacker[param1->battlerIdAttacker] = param1->damage;
                param1->turnFlags[param1->battlerIdDefender].specialDamageLastAttacker = param1->battlerIdAttacker;
                param1->turnFlags[param1->battlerIdDefender].specialDamageAttackerMask |= sub_020787CC(param1->battlerIdAttacker);
                param1->selfTurnFlags[param1->battlerIdDefender].specialDamageTaken = param1->damage;
                param1->selfTurnFlags[param1->battlerIdDefender].specialDamageTakenLastAttacker = param1->battlerIdAttacker;
            }

            if ((param1->battleMons[param1->battlerIdDefender].curHP + param1->damage) <= 0) {
                param1->selfTurnFlags[param1->battlerIdAttacker].shellBellDamageDealt += (param1->battleMons[param1->battlerIdDefender].curHP * -1);
            } else {
                param1->selfTurnFlags[param1->battlerIdAttacker].shellBellDamageDealt += param1->damage;
            }

            param1->turnFlags[param1->battlerIdDefender].lastDamageTaken = param1->damage;
            param1->turnFlags[param1->battlerIdDefender].lastAttacker = param1->battlerIdAttacker;
            param1->msgBattlerIdTemp = param1->battlerIdDefender;
            param1->hpCalcTemp = param1->damage;

            ov16_02251E1C(param1, 1, (0 + 2));

            param1->command = 21;
            param1->commandNext = 28;
            param1->battleStatusMask |= 0x2000;
        }
    } else {
        param1->command = 28;
    }
}

static void ov16_0224FD00 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    switch (param1->afterMoveMessageType) {
    case 0:
        switch (param1->afterMoveMessageState) {
        case 0:
            param1->afterMoveMessageState++;

            if (ov16_022511FC(param0, param1) == 1) {
                return;
            }
        case 1:
            param1->afterMoveMessageState++;

            if (ov16_02251218(param0, param1) == 1) {
                return;
            }
        case 2:
        {
            int v0;

            param1->afterMoveMessageState++;

            if ((ov16_02253710(param0, param1, &v0) == 1) && ((param1->moveStatusFlags & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) {
                ov16_02251E1C(param1, 1, v0);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 3:
            param1->afterMoveMessageState++;
            ov16_02251E1C(param1, 1, (0 + 293));
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        case 4:
            param1->afterMoveMessageState++;

            if (ov16_0225126C(param0, param1) == 1) {
                return;
            }
        case 5:
        {
            int v1;

            param1->afterMoveMessageState++;

            if (ov16_0225708C(param0, param1, &v1) == 1) {
                ov16_02251E1C(param1, 1, v1);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 6:
            param1->afterMoveMessageState++;

            if (ov16_022512F8(param0, param1) == 1) {
                return;
            }
        default:
            break;
        }
        break;
    case 1:
        switch (param1->afterMoveMessageState) {
        case 0:
            param1->afterMoveMessageState++;

            if (ov16_022511FC(param0, param1) == 1) {
                return;
            }
        case 1:
        {
            int v2;

            param1->afterMoveMessageState++;

            if ((ov16_02253710(param0, param1, &v2) == 1) && ((param1->moveStatusFlags & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) {
                ov16_02251E1C(param1, 1, v2);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 2:
            param1->afterMoveMessageState++;
            ov16_02251E1C(param1, 1, (0 + 293));
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        case 3:
            param1->afterMoveMessageState++;

            if (ov16_0225126C(param0, param1) == 1) {
                return;
            }
        case 4:
        {
            int v3;

            param1->afterMoveMessageState++;

            if (ov16_0225708C(param0, param1, &v3) == 1) {
                ov16_02251E1C(param1, 1, v3);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 5:
            param1->afterMoveMessageState++;

            if (ov16_02251218(param0, param1) == 1) {
                return;
            }
        case 6:
            param1->afterMoveMessageState++;

            if (ov16_022512F8(param0, param1) == 1) {
                return;
            }
        default:
            break;
        }
        break;
    }

    param1->afterMoveMessageState = 0;
    param1->command = 30;
}

static void ov16_0224FEE0 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    return;
}

static void ov16_0224FEE4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    switch (param1->afterMoveEffectState) {
    case 0:
    {
        int v0 = 0;

        while (param1->afterMoveEffectTemp < ov16_0223DF1C(param0)) {
            if (((param1->battleMons[param1->afterMoveEffectTemp].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000)) == 0) && (param1->battleMons[param1->afterMoveEffectTemp].moveEffectsTemp & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
                param1->battleMons[param1->afterMoveEffectTemp].moveEffectsTemp &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
                ov16_02251E1C(param1, 1, (0 + 287));
                param1->msgBattlerIdTemp = param1->afterMoveEffectTemp;
                param1->commandNext = param1->command;
                param1->command = 21;
                v0 = 1;
            }

            param1->afterMoveEffectTemp++;

            if (v0) {
                return;
            }
        }
    }
        param1->afterMoveEffectState++;
        param1->afterMoveEffectTemp = 0;
    case 1:
        param1->afterMoveEffectState++;

        if (ov16_02257808(param0, param1, param1->command) == 1) {
            return;
        }
    case 2:
    {
        int v1;

        v1 = ov16_02256414(param0, param1);

        if (v1) {
            ov16_02251E1C(param1, 1, v1);
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        }
    }
        param1->afterMoveEffectState++;
    case 3:
        param1->afterMoveEffectState++;

        if (ov16_022579A4(param0, param1, param1->battlerIdAttacker) == 1) {
            return;
        }
    case 4:
        param1->afterMoveEffectState++;

        if (param1->battlerIdDefender != 0xff) {
            if (ov16_022579A4(param0, param1, param1->battlerIdDefender) == 1) {
                return;
            }
        }
    case 5:
    {
        int v2;

        param1->afterMoveEffectState++;

        if (ov16_022588BC(param0, param1, &v2) == 1) {
            ov16_02251E1C(param1, 1, v2);
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        }
    }
    case 6:
    {
        int v3;

        if (ov16_02255A4C(param1, param1->battlerIdAttacker) == 96) {
            v3 = 0;
        } else if (param1->moveType) {
            v3 = param1->moveType;
        } else {
            v3 = param1->aiContext.moveTable[param1->moveNumCurr].unk_04;
        }

        param1->afterMoveEffectState++;

        if (param1->battlerIdDefender != 0xff) {
            if ((param1->battleMons[param1->battlerIdDefender].status & 0x20) && ((param1->moveStatusFlags & 0x4000) == 0) && (param1->battlerIdDefender != param1->battlerIdAttacker) && ((param1->selfTurnFlags[param1->battlerIdDefender].physicalDamageTaken) || (param1->selfTurnFlags[param1->battlerIdDefender].specialDamageTaken)) && (param1->battleMons[param1->battlerIdDefender].curHP) && (v3 == 10)) {
                param1->msgBattlerIdTemp = param1->battlerIdDefender;
                ov16_02251E1C(param1, 1, (0 + 29));
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
    }
    case 7:
    {
        int v4;
        int v5 = 0;
        int v6;

        while (param1->afterMoveEffectTemp < ov16_0223DF1C(param0)) {
            v4 = param1->monSpeedOrder[param1->afterMoveEffectTemp];

            if (param1->battlersSwitchingMask & sub_020787CC(v4)) {
                param1->afterMoveEffectTemp++;
                continue;
            }

            param1->afterMoveEffectTemp++;

            if (ov16_02258104(param0, param1, v4, &v6) == 1) {
                param1->msgBattlerIdTemp = v4;
                ov16_02251E1C(param1, 1, v6);

                param1->commandNext = param1->command;
                param1->command = 21;

                v5 = 1;
                break;
            }
        }

        if (v5 == 0) {
            param1->afterMoveEffectState++;
            param1->afterMoveEffectTemp = 0;
        }
    }
    break;
    default:
        break;
    }

    param1->afterMoveEffectState = 0;
    param1->afterMoveEffectTemp = 0;
    param1->command = 31;
}

static void ov16_0225016C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    return;
}

static void ov16_02250170 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (param1->multiHitNumHits) {
        if ((param1->battlerIdFainted == 0xff) && ((param1->battleMons[param1->battlerIdAttacker].status & 0x7) == 0) && ((param1->moveStatusFlags & 0x4000) == 0)) {
            if (--param1->multiHitCounter) {
                param1->multiHitLoop = 1;
                ov16_02255F94(param0, param1);

                param1->battleStatusMask &= (0x4000 ^ 0xffffffff);
                param1->multiHitCheckFlags = param1->multiHitAccuracyCheck;

                ov16_02251E1C(param1, 0, param1->moveNumCurr);

                param1->command = 21;
                param1->commandNext = 23;
            } else {
                param1->msgTemp = param1->multiHitNumHits;
                ov16_02251E1C(param1, 1, (0 + 17));

                param1->command = 21;
                param1->commandNext = 33;
            }
        } else {
            if ((param1->battlerIdFainted != 0xff) || (param1->battleMons[param1->battlerIdAttacker].status & 0x7)) {
                param1->msgTemp = param1->multiHitNumHits - param1->multiHitCounter + 1;
            } else {
                param1->msgTemp = param1->multiHitNumHits - param1->multiHitCounter;
            }

            ov16_02251E1C(param1, 1, (0 + 17));
            param1->command = 21;
            param1->commandNext = 33;
        }

        ov16_02266AA0(param0);
    } else {
        param1->command = 33;
    }
}

static void ov16_02250270 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (param1->battleStatusMask & 0xf000000) {
        ov16_02250EF4(param1, 33, 33, 0);
    } else {
        param1->command = 34;
    }
}

static void ov16_02250298 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (param1->battleStatusMask2 & 0x8) {
        param1->battleStatusMask2 &= (0x8 ^ 0xffffffff);
        param1->battlerIdDefender = param1->battlerIdAttacker;
        param1->battlerIdAttacker = param1->battlerIdMagicCoat;
    }

    ov16_02250FF4(param0, param1);

    if ((param1->aiContext.moveTable[param1->moveNumCurr].unk_08 == 0x4) && ((param1->battleStatusMask & 0x2) == 0) && (param1->battlerIdCounter < ov16_0223DF1C(param0))) {
        param1->multiHitCheckFlags = (0x1 | 0x4 | 0x8);
        {
            int v0;
            int v1 = ov16_0223DF1C(param0);
            UnkStruct_ov16_0225BFFC * v2 = ov16_0223DF14(param0, param1->battlerIdAttacker);
            u8 v3 = ov16_02263AE4(v2);

            do {
                v0 = param1->monSpeedOrder[param1->battlerIdCounter++];

                if (((param1->battlersSwitchingMask & sub_020787CC(v0)) == 0) && (param1->battleMons[v0].curHP)) {
                    v2 = ov16_0223DF14(param0, v0);

                    if (((v3 & 0x1) && ((ov16_02263AE4(v2) & 0x1) == 0)) || ((v3 & 0x1) == 0) && (ov16_02263AE4(v2) & 0x1)) {
                        ov16_02255F94(param0, param1);
                        param1->battlerIdDefender = v0;
                        param1->command = 22;
                        break;
                    }
                }
            } while (param1->battlerIdCounter < ov16_0223DF1C(param0));
        }
        ov16_02266AA0(param0);
    } else if ((param1->aiContext.moveTable[param1->moveNumCurr].unk_08 == 0x8) && ((param1->battleStatusMask & 0x2) == 0) && (param1->battlerIdCounter < ov16_0223DF1C(param0))) {
        param1->multiHitCheckFlags = (0x1 | 0x4 | 0x8);
        {
            int v4;
            int v5 = ov16_0223DF1C(param0);

            do {
                v4 = param1->monSpeedOrder[param1->battlerIdCounter++];

                if (((param1->battlersSwitchingMask & sub_020787CC(v4)) == 0) && (param1->battleMons[v4].curHP)) {
                    if (v4 != param1->battlerIdAttacker) {
                        ov16_02255F94(param0, param1);
                        param1->battlerIdDefender = v4;
                        param1->command = 22;
                        break;
                    }
                }
            } while (param1->battlerIdCounter < ov16_0223DF1C(param0));
        }
        ov16_02266AA0(param0);
    } else {
        param1->command = 35;
    }
}

static void ov16_02250438 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (param1->battleStatusMask & 0xf0000000) {
        param1->battlerIdFainted = sub_020787EC((param1->battleStatusMask & 0xf0000000) >> 28);
        param1->battleStatusMask &= (0xf0000000 ^ 0xffffffff);

        ov16_02251E1C(param1, 1, (0 + 277));

        param1->command = 21;
        param1->commandNext = 36;
    } else {
        param1->command = 36;
    }
}

static void ov16_02250480 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (ov16_0225143C(param0, param1) == 1) {
        return;
    }

    param1->command = 38;
}

static void ov16_02250494 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    return;
}

static void ov16_02250498 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    u8 v0;

    v0 = ov16_02258AB8(param1, param1->battlerIdAttacker);

    if ((param1->battleStatusMask & 0x20) || (param1->battleStatusMask2 & 0x4)) {
        if ((v0 == 55) || (v0 == 115) || (v0 == 125)) {
            if ((param1->moveNumTemp == 165) || ((param1->moveNumTemp == 369) && (param1->battleStatusMask2 & 0x10)) || ((param1->moveNumTemp == 226) && (param1->battleStatusMask2 & 0x40))) {
                (void)0;
            } else {
                param1->battleMons[param1->battlerIdAttacker].moveEffectsData.choiceLockedMove = param1->moveNumTemp;
            }
        } else {
            param1->battleMons[param1->battlerIdAttacker].moveEffectsData.choiceLockedMove = 0;
        }
    }

    if ((param1->battleStatusMask & 0x100000) == 0) {
        if (param1->battleStatusMask2 & 0x4) {
            param1->moveNumProtect[param1->battlerIdAttacker] = param1->moveNumCurr;
            param1->moveNumPrev = param1->moveNumTemp;
        } else {
            param1->moveNumProtect[param1->battlerIdAttacker] = 0;
            param1->moveNumPrev = 0;
        }

        if (param1->battleStatusMask2 & 0x40) {
            param1->moveNumPrevByBattler[param1->battlerIdAttacker] = param1->moveNumTemp;
        } else {
            param1->moveNumPrevByBattler[param1->battlerIdAttacker] = 0;
        }
    }

    if (param1->battleStatusMask2 & 0x4) {
        param1->moveNumSketched[param1->battlerIdAttacker] = param1->moveNumTemp;
    }

    ov16_02250FF4(param0, param1);
    ov16_0225991C(param0, param1);

    param1->command = 39;
}

static void ov16_022505C4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    u32 v1;

    v1 = ov16_0223DF0C(param0);

    if ((v1 & (0x20 | 0x200)) == 0) {
        if (ov16_02257628(param0, param1, param1->battlerIdAttacker, 0) == 1) {
            return;
        }

        if ((param1->battlerIdDefender != 0xff) && (ov16_02257628(param0, param1, param1->battlerIdDefender, 0) == 1)) {
            return;
        }

        if (ov16_02250F98(param1, param1->command, param1->command) == 1) {
            return;
        }

        if (ov16_02250A48(param0, param1) == 1) {
            return;
        }

        v0 = ov16_02256414(param0, param1);

        if (v0) {
            ov16_02251E1C(param1, 1, v0);
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        }

        if (ov16_022513B0(param0, param1) == 1) {
            return;
        }

        ov16_02250E8C(param0, param1);
    }

    param1->battlerActions[param1->battlerActionOrder[param1->turnOrderCounter]][0] = 39;

    if (param1->selfTurnFlags[param1->battlerIdAttacker].trickRoomActivated) {
        ov16_0225B148(param0, param1);
        ov16_02255FBC(param0, param1);
        param1->turnOrderCounter = 0;
    } else {
        param1->turnOrderCounter++;
    }

    ov16_022541C4(param1);

    param1->command = 8;
}

static void ov16_022506A4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;

    if (ov16_02250EF4(param1, param1->command, param1->command, 1) == 1) {
        return;
    }

    param1->command = 39;
}

static void ov16_022506C0 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (ov16_0223F438(param0) & 0x80) {
        param1->command = 43;
    } else if ((ov16_0223F438(param0) == 0x2) || (ov16_0223F438(param0) == 0x3)) {
        ov16_02251E1C(param1, 1, (0 + 5));
        param1->command = 21;
        param1->commandNext = 43;
    } else if (ov16_0223F438(param0) == 0x1) {
        ov16_02251E1C(param1, 1, (0 + 4));
        param1->command = 21;
        param1->commandNext = 43;
    } else if (ov16_0223F438(param0) == 0x4) {
        param1->command = 21;
        param1->commandNext = 43;
    } else if (ov16_0223F438(param0) == 0x5) {
        param1->command = 43;
    }

    param1->battleEndFlag = 1;
}

static void ov16_0225074C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    if (sub_0200F2AC() == 1) {
        param1->command = 43;
    }
}

static void ov16_02250760 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    Party * v0;
    u32 v1;

    v1 = ov16_0223DF0C(param0);

    if ((v1 & 0x4) == 0) {
        v0 = ov16_0223DF20(param0, 0);
        sub_020776B0(v0);
        sub_0207782C(v0);
    }

    if (v1 & 0x4) {
        sub_020360DC(22);
    }

    param1->command = 44;
}

static void ov16_02250798 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    return;
}

static BOOL ov16_0225079C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    BOOL v0 = 0;
    int v1;
    int v2;
    u32 v3;
    int v4;

    v2 = ov16_0223DF1C(param0);
    v3 = ov16_0223DF0C(param0);
    v4 = param1->command;

    for (v1 = 0; v1 < v2; v1++) {
        param1->battlerStatusFlags[v1] &= 0x1 ^ 0xffffffff;

        if (((v3 & 0x2) && ((v3 & (0x8 | 0x10)) == 0)) || ((v3 & 0x10) && ((ov16_0223E208(param0, v1)) == 0))) {
            if ((param1->battleMons[v1].curHP == 0) && (param1->battleMons[v1 ^ 2].curHP == 0) && (v1 & 2)) {
                continue;
            }

            if (param1->battleMons[v1].curHP == 0) {
                {
                    int v5;
                    int v6;
                    int v7 = 0;
                    int v8 = 0;
                    Party * v9;
                    Pokemon * v10;
                    UnkStruct_ov16_0225BFFC * v11;

                    v9 = ov16_0223DF20(param0, v1);
                    v11 = ov16_0223DF14(param0, v1);

                    for (v5 = 0; v5 < Party_GetCurrentCount(v9); v5++) {
                        v10 = Party_GetPokemonBySlotIndex(v9, v5);

                        if ((GetMonData(v10, MON_DATA_SPECIES_EGG, NULL) != 0) && (GetMonData(v10, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            if (v6 = GetMonData(v10, MON_DATA_163, NULL)) {
                                v8++;

                                if (param1->selectedMonIndex[v1 ^ 2] != v5) {
                                    v7 += v6;
                                }
                            }
                        }
                    }

                    if (v7 == 0) {
                        param1->battlersSwitchingMask |= sub_020787CC(v1);
                        param1->selectedMonIndex[v1] = 6;
                    } else {
                        param1->commandNext = v4;
                        param1->command = 21;
                        param1->battlerStatusFlags[v1] |= 0x1;
                    }
                }
            }
        } else {
            if (param1->battleMons[v1].curHP == 0) {
                {
                    int v12;
                    int v13 = 0;
                    Party * v14;
                    Pokemon * v15;
                    UnkStruct_ov16_0225BFFC * v16;

                    v14 = ov16_0223DF20(param0, v1);
                    v16 = ov16_0223DF14(param0, v1);

                    for (v12 = 0; v12 < Party_GetCurrentCount(v14); v12++) {
                        v15 = Party_GetPokemonBySlotIndex(v14, v12);

                        if ((GetMonData(v15, MON_DATA_SPECIES_EGG, NULL) != 0) && (GetMonData(v15, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v13 += GetMonData(v15, MON_DATA_163, NULL);
                        }
                    }

                    if (v13 == 0) {
                        param1->battlersSwitchingMask |= sub_020787CC(v1);
                        param1->selectedMonIndex[v1] = 6;
                    } else {
                        param1->commandNext = v4;
                        param1->command = 21;
                        param1->battlerStatusFlags[v1] |= 0x1;
                    }
                }
            }
        }
    }

    if (param1->command == 21) {
        if (((v3 & (0x4 | 0x2 | 0x80)) == 0) && (ov16_0223EE18(param0) == 0) && (((param1->battlerStatusFlags[0] & 0x1) == 0) || ((param1->battlerStatusFlags[1] & 0x1) == 0)) && (ov16_02255B10(param0, param1, 0))) {
            if (param1->battlerStatusFlags[0] & 0x1) {
                param1->scriptTemp = 0;
            } else {
                param1->scriptTemp = 1;
            }

            ov16_02251E1C(param1, 1, (0 + 231));
        } else {
            ov16_02251E1C(param1, 1, (0 + 10));
        }

        v0 = 1;
    }

    return v0;
}

static BOOL ov16_02250A48 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;
    u8 v3;

    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223DF0C(param0);
    v3 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if (((v2 == ((0x2 | 0x1) | 0x8 | 0x40)) || (v2 == (0x2 | 0x8 | 0x40))) && (ov16_0223E208(param0, v0) == 0)) {
            if (ov16_0223E1F8(param0, v0) == 2) {
                if (param1->battleMons[v0].curHP == 0) {
                    {
                        int v4;
                        int v5 = 0;
                        Party * v6;
                        Pokemon * v7;
                        UnkStruct_ov16_0225BFFC * v8;

                        v6 = ov16_0223DF20(param0, v0);
                        v8 = ov16_0223DF14(param0, v0);

                        for (v4 = 0; v4 < Party_GetCurrentCount(v6); v4++) {
                            v7 = Party_GetPokemonBySlotIndex(v6, v4);

                            if ((GetMonData(v7, MON_DATA_SPECIES_EGG, NULL) != 0) && (GetMonData(v7, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                                v5 += GetMonData(v7, MON_DATA_163, NULL);
                            }
                        }

                        if (v5 == 0) {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        } else if ((v2 & 0x8) || ((v2 & 0x10) && (ov16_0223E208(param0, v0)))) {
            if (param1->battleMons[v0].curHP == 0) {
                {
                    int v9;
                    int v10 = 0;
                    Party * v11;
                    Party * v12;
                    Pokemon * v13;
                    UnkStruct_ov16_0225BFFC * v14;

                    v11 = ov16_0223DF20(param0, v0);
                    v12 = ov16_0223DF20(param0, ov16_0223E258(param0, v0));
                    v14 = ov16_0223DF14(param0, v0);

                    for (v9 = 0; v9 < Party_GetCurrentCount(v11); v9++) {
                        v13 = Party_GetPokemonBySlotIndex(v11, v9);

                        if ((GetMonData(v13, MON_DATA_SPECIES_EGG, NULL) != 0) && (GetMonData(v13, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v10 += GetMonData(v13, MON_DATA_163, NULL);
                        }
                    }

                    for (v9 = 0; v9 < Party_GetCurrentCount(v12); v9++) {
                        v13 = Party_GetPokemonBySlotIndex(v12, v9);

                        if ((GetMonData(v13, MON_DATA_SPECIES_EGG, NULL) != 0) && (GetMonData(v13, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v10 += GetMonData(v13, MON_DATA_163, NULL);
                        }
                    }

                    if (v10 == 0) {
                        if (ov16_02263AE4(v14) & 0x1) {
                            v3 |= 0x1;
                        } else {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        } else {
            if (param1->battleMons[v0].curHP == 0) {
                {
                    int v15;
                    int v16 = 0;
                    Party * v17;
                    Pokemon * v18;
                    UnkStruct_ov16_0225BFFC * v19;

                    v17 = ov16_0223DF20(param0, v0);
                    v19 = ov16_0223DF14(param0, v0);

                    for (v15 = 0; v15 < Party_GetCurrentCount(v17); v15++) {
                        v18 = Party_GetPokemonBySlotIndex(v17, v15);

                        if ((GetMonData(v18, MON_DATA_SPECIES_EGG, NULL) != 0) && (GetMonData(v18, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v16 += GetMonData(v18, MON_DATA_163, NULL);
                        }
                    }

                    if (v16 == 0) {
                        if (ov16_02263AE4(v19) & 0x1) {
                            v3 |= 0x1;
                        } else {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        }
    }

    if (((v3 == 0x1) && (v2 & 0x1) && ((v2 & 0x4) == 0)) || ((v3 == 0x1) && (v2 & 0x80) && ((v2 & 0x4) == 0))) {
        {
            TrainerData *v20 = ov16_0223E120(param0, 1);

            switch (v20->class) {
                case TRAINER_CLASS_LEADER_ROARK:
                case TRAINER_CLASS_LEADER_GARDENIA:
                case TRAINER_CLASS_LEADER_WAKE:
                case TRAINER_CLASS_LEADER_MAYLENE:
                case TRAINER_CLASS_LEADER_FANTINA:
                case TRAINER_CLASS_LEADER_CANDICE:
                case TRAINER_CLASS_LEADER_BYRON:
                case TRAINER_CLASS_LEADER_VOLKNER:
                    sub_0200549C(SEQ_VICTORY_GYM_LEADER);
                    break;
                case TRAINER_CLASS_TOWER_TYCOON:
                case TRAINER_CLASS_HALL_MATRON:
                case TRAINER_CLASS_FACTORY_HEAD:
                case TRAINER_CLASS_ARCADE_STAR:
                case TRAINER_CLASS_CASTLE_VALET:
                    sub_0200549C(SEQ_VICTORY_FRONTIER_BRAIN);
                    break;
                case TRAINER_CLASS_CHAMPION_CYNTHIA:
                    sub_0200549C(SEQ_VICTORY_CHAMPION);
                    break;
                case TRAINER_CLASS_COMMANDER_MARS:
                case TRAINER_CLASS_COMMANDER_JUPITER:
                case TRAINER_CLASS_COMMANDER_SATURN:
                case TRAINER_CLASS_GALACTIC_GRUNT_MALE:
                case TRAINER_CLASS_GALACTIC_GRUNT_FEMALE:
                    sub_0200549C(SEQ_VICTORY_GALACTIC_GRUNT);
                    break;
                case TRAINER_CLASS_GALACTIC_BOSS:
                    sub_0200549C(SEQ_VICTORY_CYRUS);
                    break;
                case TRAINER_CLASS_ELITE_FOUR_AARON:
                case TRAINER_CLASS_ELITE_FOUR_BERTHA:
                case TRAINER_CLASS_ELITE_FOUR_FLINT:
                case TRAINER_CLASS_ELITE_FOUR_LUCIAN:
                    sub_0200549C(SEQ_VICTORY_ELITE_FOUR);
                    break;
                default:
                    sub_0200549C(SEQ_VICTORY_TRAINER);
                    break;
            }
        }
        ov16_0223F460(param0, 2);
    }

    if (v3) {
        ov16_0223F444(param0, v3);
    }

    return v3 != 0;
}

static BOOL ov16_02250DE4 (UnkStruct_0207ADB4 * param0, BattleContext * param1, u8 param2, u32 param3, int * param4, int param5, u32 * param6)
{
    if ((param1->battleMons[param2].moves[param5] == 174) && (ov16_02255950(param1, param1->battleMons[param2].moves[param5], param2) == 0)) {
        *param4 = 0x10;
    } else {
        *param4 = param1->aiContext.moveTable[param1->battleMons[param2].moves[param5]].unk_08;
    }

    if (param3 & 0x2) {
        if (*param4 == 0x100) {
            if ((param1->battlersSwitchingMask & sub_020787CC(ov16_0223E258(param0, param2))) == 0) {
                return 1;
            } else {
                return 0;
            }
        } else {
            return 1;
        }
    } else {
        if (*param4 & (0x1 | 0x10 | 0x40 | 0x200)) {
            *param6 = param2;
        } else {
            *param6 = param2 ^ 1;
        }

        return 0;
    }
}

static void ov16_02250E8C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        param1->battleMons[v0].statusVolatile &= (param1->clearVolatileStatus[v0] ^ 0xffffffff);
        param1->clearVolatileStatus[v0] = 0;
    }

    param1->moveNumHit[param1->battlerIdAttacker] = 0;
    param1->conversion2Move[param1->battlerIdAttacker] = 0;
}

static BOOL ov16_02250EF4 (BattleContext * param0, int param1, int param2, int param3)
{
    int v0;
    int v1;

    v0 = 0;
    v1 = sub_020787CC(param0->monSpeedOrder[v0]) << 24;

    if (param0->battleStatusMask & 0xf000000) {
        while ((param0->battleStatusMask & v1) == 0) {
            v0++;
            v1 = sub_020787CC(param0->monSpeedOrder[v0]) << 24;
        }

        param0->battleStatusMask &= (v1 ^ 0xffffffff);
        param0->battlerIdFainted = sub_020787EC(v1 >> 24);

        if (param3 == 1) {
            ov16_02251E1C(param0, 1, (0 + 6));
        } else {
            ov16_02251E1C(param0, 1, (0 + 83));
        }

        param0->command = 21;
        param0->commandNext = param1;
        param0->battlerActions[param0->battlerIdFainted][0] = 39;

        return 1;
    } else {
        param0->command = param2;
        return 0;
    }
}

static BOOL ov16_02250F98 (BattleContext * param0, int param1, int param2)
{
    if (param0->battleStatusMask2 & 0xf0000000) {
        {
            int v0;

            v0 = 1 << 28;

            while ((param0->battleStatusMask2 & v0) == 0) {
                v0 = v0 << 1;
            }

            param0->battleStatusMask2 &= (v0 ^ 0xffffffff);
            param0->battlerIdFainted = sub_020787EC(v0 >> 28);

            ov16_02251E1C(param0, 1, (0 + 276));

            param0->command = 21;
            param0->commandNext = param1;
        }
        return 1;
    } else {
        param0->command = param2;
        return 0;
    }
}

static void ov16_02250FF4 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u8 v2;

    if (ov16_02255A4C(param1, param1->battlerIdAttacker) == 96) {
        v1 = 0;
    } else if (param1->moveType) {
        v1 = param1->moveType;
    } else {
        v1 = param1->aiContext.moveTable[param1->moveNumCurr].unk_04;
    }

    v0 = param1->aiContext.moveTable[param1->moveNumTemp].unk_0B;

    if ((v0 & 0x10) && ((param1->battleStatusMask & 0x100000) == 0) && (param1->battlerIdDefender != 0xff) && (param1->battleStatusMask2 & 0x4)) {
        param1->moveNumCopied[param1->battlerIdDefender] = param1->moveNumTemp;
        param1->moveNumCopiedHit[param1->battlerIdDefender][param1->battlerIdAttacker] = param1->moveNumTemp;
    }

    if (param1->battlerIdDefender != 0xff) {
        v2 = ov16_02258AB8(param1, param1->battlerIdDefender);

        if ((param1->battleStatusMask & 0x20) || (param1->battleStatusMask2 & 0x4)) {
            if ((v2 != 55) && (v2 != 115) && (v2 != 125)) {
                param1->battleMons[param1->battlerIdDefender].moveEffectsData.choiceLockedMove = 0;
            }
        }

        if ((param1->battleStatusMask & 0x100000) == 0) {
            if (param1->battleStatusMask2 & 0x4) {
                param1->moveNumHit[param1->battlerIdDefender] = param1->moveNumCurr;
                param1->moveNumHitBattler[param1->battlerIdDefender] = param1->battlerIdAttacker;
                param1->moveNumHitType[param1->battlerIdDefender] = v1;
                param1->moveNumPrev = param1->moveNumTemp;
            } else {
                param1->moveNumHit[param1->battlerIdDefender] = 0;
                param1->moveNumHitBattler[param1->battlerIdDefender] = 0xff;
                param1->moveNumHitType[param1->battlerIdDefender] = 0;
                param1->moveNumPrev = 0;
            }

            if ((param1->battleStatusMask2 & 0x40) && ((param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0)) {
                switch (param1->aiContext.moveTable[param1->moveNumCurr].unk_08) {
                case 0x10:
                case 0x20:
                case 0x40:
                case 0x80:
                case 0x100:
                case 0x200:
                    param1->conversion2Move[param1->battlerIdDefender] = 0;
                    param1->conversion2Battler[param1->battlerIdDefender] = 0xff;
                    param1->conversion2Type[param1->battlerIdDefender] = 0;
                    break;
                default:
                    param1->conversion2Move[param1->battlerIdDefender] = param1->moveNumCurr;
                    param1->conversion2Battler[param1->battlerIdDefender] = param1->battlerIdAttacker;
                    param1->conversion2Type[param1->battlerIdDefender] = v1;
                    break;
                }
            } else {
                param1->conversion2Move[param1->battlerIdDefender] = 0;
                param1->conversion2Battler[param1->battlerIdDefender] = 0xff;
                param1->conversion2Type[param1->battlerIdDefender] = 0;
            }
        }
    }
}

static BOOL ov16_022511FC (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    ov16_02251E1C(param1, 1, (0 + 16));

    param1->commandNext = param1->command;
    param1->command = 21;

    return 1;
}

static BOOL ov16_02251218 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->moveStatusFlags) {
        if (param1->multiHitNumHits) {
            if ((param1->battlerIdFainted != 0xff) || (param1->multiHitCounter == 1) || (param1->moveStatusFlags & 0x4000)) {
                v0 = 1;
            }
        } else {
            v0 = 1;
        }
    }

    if (v0 == 1) {
        ov16_02251E1C(param1, 1, (0 + 21));

        param1->commandNext = param1->command;
        param1->command = 21;
    }

    return v0;
}

static BOOL ov16_0225126C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->battlerIdDefender == 0xff) {
        return v0;
    }

    if ((param1->battleMons[param1->battlerIdDefender].statusVolatile & 0x800000) && ((param1->moveStatusFlags & 0x4000) == 0) && (param1->battlerIdDefender != param1->battlerIdAttacker) && (param1->battleMons[param1->battlerIdDefender].curHP) && ((param1->selfTurnFlags[param1->battlerIdDefender].physicalDamageTaken) || (param1->selfTurnFlags[param1->battlerIdDefender].specialDamageTaken))) {
        if (param1->battleMons[param1->battlerIdDefender].statBoosts[0x1] < 12) {
            param1->battleMons[param1->battlerIdDefender].statBoosts[0x1]++;
            ov16_02251E1C(param1, 1, (0 + 245));
            param1->commandNext = param1->command;
            param1->command = 21;
            v0 = 1;
        }
    }

    return v0;
}

static BOOL ov16_022512F8 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    BOOL v0 = 0;
    int v1;
    int v2;

    v1 = ov16_02258AB8(param1, param1->battlerIdAttacker);
    v2 = ov16_02258ACC(param1, param1->battlerIdAttacker, 0);

    if (param1->battlerIdDefender != 0xff) {
        if ((v1 == 56) && ((param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->selfTurnFlags[param1->battlerIdDefender].physicalDamageTaken) || (param1->selfTurnFlags[param1->battlerIdDefender].specialDamageTaken)) && ((ov16_0223F4BC(param0) % 100) < v2) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_0B & 0x20) && (param1->battleMons[param1->battlerIdDefender].curHP)) {
            param1->battlerIdAddlEffect = param1->battlerIdDefender;
            param1->addlEffectType = 2;

            ov16_02251E1C(param1, 1, (0 + 14));

            param1->commandNext = param1->command;
            param1->command = 21;

            v0 = 1;
        }
    }

    return v0;
}

static BOOL ov16_022513B0 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    BOOL v0 = 0;

    while (param1->vanishedCheckTemp < ov16_0223DF1C(param0)) {
        if (((param1->battleMons[param1->vanishedCheckTemp].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000)) == 0) && (param1->battleMons[param1->vanishedCheckTemp].moveEffectsTemp & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
            param1->battleMons[param1->vanishedCheckTemp].moveEffectsTemp &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
            ov16_02251E1C(param1, 1, (0 + 287));

            param1->msgBattlerIdTemp = param1->vanishedCheckTemp;
            param1->commandNext = param1->command;
            param1->command = 21;

            v0 = 1;
        }

        param1->vanishedCheckTemp++;

        if (v0 == 1) {
            break;
        }
    }

    if (v0 == 0) {
        param1->vanishedCheckTemp = 0;
    }

    return v0;
}

static BOOL ov16_0225143C (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v0 = 0;
    v2 = ov16_0223DF1C(param0);
    v3 = ov16_02258AB8(param1, param1->battlerIdAttacker);
    v4 = ov16_02258ACC(param1, param1->battlerIdAttacker, 0);

    if (ov16_02250EF4(param1, param1->command, param1->command, 1) == 1) {
        return 1;
    }

    do {
        switch (param1->afterMoveHitCheckState) {
        case 0:
            if ((param1->battleMons[param1->battlerIdAttacker].statusVolatile & 0x800000) && (param1->moveNumCurr != 99)) {
                param1->battleMons[param1->battlerIdAttacker].statusVolatile &= (0x800000 ^ 0xffffffff);
            }

            param1->afterMoveHitCheckState++;
            break;
        case 1:
            if (param1->battlerIdDefender != 0xff) {
                if ((v3 == 88) && ((param1->battleStatusMask2 & 0x10) == 0) && (param1->battleStatusMask & 0x2000) && (param1->selfTurnFlags[param1->battlerIdAttacker].shellBellDamageDealt) && (param1->battlerIdAttacker != param1->battlerIdDefender) && (param1->battleMons[param1->battlerIdAttacker].curHP < param1->battleMons[param1->battlerIdAttacker].maxHP) && (param1->battleMons[param1->battlerIdAttacker].curHP)) {
                    param1->hpCalcTemp = ov16_022563F8(param1->selfTurnFlags[param1->battlerIdAttacker].shellBellDamageDealt * -1, v4);
                    param1->msgBattlerIdTemp = param1->battlerIdAttacker;
                    ov16_02251E1C(param1, 1, (0 + 213));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v0 = 1;
                }
            }

            param1->afterMoveHitCheckState++;
            break;
        case 2:
            if ((v3 == 98) && (ov16_02255A4C(param1, param1->battlerIdAttacker) != 98) && ((param1->battleStatusMask2 & 0x10) == 0) && (param1->battleStatusMask & 0x2000) && (param1->aiContext.moveTable[param1->moveNumCurr].unk_02 != 2) && (param1->battleMons[param1->battlerIdAttacker].curHP)) {
                param1->hpCalcTemp = ov16_022563F8(param1->battleMons[param1->battlerIdAttacker].maxHP * -1, 10);
                param1->msgBattlerIdTemp = param1->battlerIdAttacker;
                ov16_02251E1C(param1, 1, (0 + 214));
                param1->commandNext = param1->command;
                param1->command = 21;
                v0 = 1;
            }

            param1->afterMoveHitCheckState++;
            break;
        case 3:
            param1->afterMoveHitCheckState = 0;
            param1->afterMoveHitCheckTemp = 0;
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    return v0 == 1;
}

static void ov16_02251604 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2 = ov16_0223DF0C(param0);
    u16 v3;

    MI_CpuClear32(&param1->aiContext, sizeof(AIContext));

    if ((v2 & 0x1) && ((v2 & (0x4 | 0x80 | 0x20 | 0x40 | 0x200)) == 0)) {
        for (v1 = 0; v1 < 4; v1++) {
            if (v1 & 1) {
                for (v0 = 0; v0 < 4; v0++) {
                    v3 = ov16_0223F700(param0, v1, v0);

                    if (v3 != 0) {
                        param1->aiContext.trainerItems[v1 >> 1][param1->aiContext.trainerItemCounts[v1 >> 1]] = v3;
                        param1->aiContext.trainerItemCounts[v1 >> 1]++;
                    }
                }
            }
        }
    }

    param1->aiScriptTemp = Unk_ov14_022248A4;
}

static void ov16_02251694 (UnkStruct_0207ADB4 * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u8 v2;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->battlerActions[v0][0] != 39) {
            if (param1->recordedCommandFlags[v0] & 0x1) {
                v2 = (param1->battlerActions[v0][0] - 13) + 1;
                ov16_0223F500(param0, v0, v2);
            }

            switch (param1->battlerActions[v0][0]) {
            case 13:
                if (param1->recordedCommandFlags[v0] & 0x2) {
                    v2 = param1->battlerActions[v0][2];
                    ov16_0223F500(param0, v0, v2);
                }

                if (param1->recordedCommandFlags[v0] & 0x4) {
                    v2 = param1->battlerActions[v0][1] + 1;
                    ov16_0223F500(param0, v0, v2);
                }
                break;
            case 14:
                v2 = param1->battlerActions[v0][2] & 0xff;
                ov16_0223F500(param0, v0, v2);
                v2 = (param1->battlerActions[v0][2] & 0xff00) >> 16;
                ov16_0223F500(param0, v0, v2);
                break;
            case 15:
                v2 = param1->battlerActions[v0][2] + 1;
                ov16_0223F500(param0, v0, v2);
                break;
            case 16:
                ov16_0223F500(param0, v0, 1);
                break;
            default:
                break;
            }
        }
    }
}
