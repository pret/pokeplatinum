#ifndef POKEPLATINUM_OV16_0226D094_H
#define POKEPLATINUM_OV16_0226D094_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "overlay016/struct_ov16_0226D160_decl.h"

#include "enums.h"

enum PartyGaugeSide {
    PARTY_GAUGE_OURS,
    PARTY_GAUGE_THEIRS,
};

enum ShowPartyGaugeType {
    SHOW_PARTY_GAUGE_BATTLE_START,
    SHOW_PARTY_GAUGE_MID_BATTLE,
};

enum HidePartyGaugeType {
    HIDE_PARTY_GAUGE_BATTLE_START,
    HIDE_PARTY_GAUGE_MID_BATTLE,
};

enum PartyGaugePosition {
    PARTY_GAUGE_POSITION_HIGH,
    PARTY_GAUGE_POSITION_MIDDLE,
    PARTY_GAUGE_POSITION_LOW,
};

enum HideArrowType {
    HIDE_ARROW_FADE_AND_SCROLL,
    HIDE_ARROW_FADE_IN_PLACE,
};

void ov16_0226D094(CellTransferStateData * param0, AnimationResourceCollection * param1, PaletteSys * param2);
void ov16_0226D12C(AnimationResourceCollection * param0);
PartyGauge * ov16_0226D194(u8 param0[], enum PartyGaugeSide param1, enum ShowPartyGaugeType param2, enum PartyGaugePosition param3, CellTransferStateData * param4, AnimationResourceCollection * param5);
BOOL ov16_0226D1FC(PartyGauge * param0);
void ov16_0226D220(PartyGauge * param0, enum HideArrowType param1, enum HidePartyGaugeType param2);
BOOL ov16_0226D258(PartyGauge * param0);
void ov16_0226D27C(PartyGauge * param0);

#endif // POKEPLATINUM_OV16_0226D094_H
