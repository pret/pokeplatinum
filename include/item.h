#ifndef POKEPLATINUM_UNK_0207CDEC_H
#define POKEPLATINUM_UNK_0207CDEC_H

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_itemdata_decl.h"

typedef struct ItemPartyParam {
    u8 slp_heal : 1;
    u8 psn_heal : 1;
    u8 brn_heal : 1;
    u8 frz_heal : 1;
    u8 prz_heal : 1;
    u8 cfs_heal : 1;
    u8 inf_heal : 1;
    u8 guard_spec : 1;
    u8 revive : 1;
    u8 revive_all : 1;
    u8 level_up : 1;
    u8 evolve : 1;
    u8 atk_stages : 4;
    u8 def_stages : 4;
    u8 spatk_stages : 4;
    u8 spdef_stages : 4;
    u8 speed_stages : 4;
    u8 accuracy_stages : 4;
    u8 critrate_stages : 2;
    u8 pp_up : 1;
    u8 pp_max : 1;
    u8 pp_restore : 1;
    u8 pp_restore_all : 1;
    u8 hp_restore : 1;
    u8 hp_ev_up : 1;
    u8 atk_ev_up : 1;
    u8 def_ev_up : 1;
    u8 speed_ev_up : 1;
    u8 spatk_ev_up : 1;
    u8 spdef_ev_up : 1;
    u8 friendship_mod_lo : 1;
    u8 friendship_mod_med : 1;
    u8 friendship_mod_hi : 1;
    s8 hp_ev_up_param;
    s8 atk_ev_up_param;
    s8 def_ev_up_param;
    s8 speed_ev_up_param;
    s8 spatk_ev_up_param;
    s8 spdef_ev_up_param;
    u8 hp_restore_param;
    u8 pp_restore_param;
    s8 friendship_mod_lo_param;
    s8 friendship_mod_med_param;
    s8 friendship_mod_hi_param;
    u8 padding[2];
} ItemPartyParam;

typedef struct ItemData {
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    u8 pluckEffect;
    u8 flingEffect;
    u8 flingPower;
    u8 naturalGiftPower;
    u16 naturalGiftType : 5;
    u16 preventToss : 1;
    u16 isSelectable : 1;
    u16 fieldPocket : 4;
    u16 battlePocket : 5;
    u8 fieldUseFunc;
    u8 battleUseFunc;
    u8 partyUse;
    u8 padding_0D;
    union {
        u8 dummy;
        ItemPartyParam partyUseParam;
    };
    u8 padding[2];
} ItemData;

void sub_0207CDEC(void * param0, u16 param1, u16 param2);
u16 sub_0207CE78(u16 param0, u16 param1);
u16 sub_0207CF10(u16 param0);
u16 Item_GetIndexOfIconNCER(void);
u16 Item_GetIndexOfIconNANR(void);
void * Item_LoadDataOrGFX(u16 param0, u16 param1, u32 param2);
void Item_GetNameIntoString(Strbuf *dst, u16 param1, u32 param2);
void Item_GetDescriptionIntoString(Strbuf *dst, u16 param1, u16 param2);
s32 Item_GetAttribute(u16 param0, u16 param1, u32 param2);
s32 Item_GetAttributeFromStruct(ItemData * param0, u16 param1);
const u16 GetMoveFromTMOrHMItemID(u16 param0);
u8 Item_IsMoveHM(u16 param0);
u8 Item_GetTMOrHMNumberFromID(u16 param0);
u8 Item_IsMail(u16 param0);
u8 sub_0207D2F0(u16 param0);
u16 sub_0207D310(u8 param0);
u8 Item_IsBerry(u16 param0);
u8 sub_0207D344(u16 param0);
u16 sub_0207D354(u8 param0);
u8 Item_IsHerbalMedicine(u16 param0);
void * sub_0207D388(int param0);
ItemData * sub_0207D3B0(ItemData * param0, u16 param1);

#endif // POKEPLATINUM_UNK_0207CDEC_H
