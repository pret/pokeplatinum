#ifndef POKEPLATINUM_BATTLE_PARTY_GAUGE_H
#define POKEPLATINUM_BATTLE_PARTY_GAUGE_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "battle/struct_ov16_0226D160_decl.h"

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

/**
 * @brief Load the graphics resources needed for the Party Gauge into memory.
 * 
 * @param renderer 
 * @param gfxHandler 
 * @param palette 
 */
void PartyGauge_LoadGraphics(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, PaletteData *palette);

/**
 * @brief Free the graphics resources needed for the Party Gauge from memory.
 * 
 * @param gfxHandler 
 */
void PartyGauge_FreeGraphics(SpriteGfxHandler *gfxHandler);

/**
 * @brief Show the Party Gauge.
 * 
 * @param ballStatus    The status of each battler's, represented as a Pokeball with a particular
 *                      masking filter. Plain Pokeballs represent healthy battlers, gray represent
 *                      fainted, darkened represent those afflicted with a status condition. For
 *                      possible values, see enum PartyGaugeBallStatus.
 * 
 * @param side          The side of the battle for which the gauge should be displayed.
 * 
 * @param showType      How the gauge should be displayed, whether at the start of a battle (a slow
 *                      inward scroll) or mid-battle after a KO (a faster inward scroll).
 * 
 * @param pos           Vertical position of the gauge; only applicable for double battles, so that
 *                      the gauge does not overlap the HP bar.
 * @param renderer 
 * @param gfxHandler 
 * @return              Pointer to the constructed PartyGauge struct, for tracking its progress
 *                      and eventually hiding it.
 */
PartyGauge* PartyGauge_Show(u8 ballStatus[], enum PartyGaugeSide side, enum ShowPartyGaugeType showType, enum PartyGaugePosition pos, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler);

/**
 * @brief Check if the Party Gauge has finished the inward scrolling animation.
 * 
 * @param gauge 
 * @return TRUE if the Party Gauge has finished its animation, else FALSE.
 */
BOOL PartyGauge_ShowIsDone(PartyGauge *gauge);

/**
 * @brief Hide the Party Gauge.
 * 
 * @param gauge         Gauge to be hidden.
 * @param hideArrowType Method by which the arrow element should be hidden.
 * @param hideGaugeType Method by which the gauge Pokeballs should be hidden.
 */
void PartyGauge_Hide(PartyGauge *gauge, enum HideArrowType hideArrowType, enum HidePartyGaugeType hideGaugeType);

/**
 * @brief Check if the Party Gauge has finished the outward vanishing animation.
 * 
 * @param gauge 
 * @return TRUE if the Party Gauge has finished its animation, else FALSE.
 */
BOOL PartyGauge_HideIsDone(PartyGauge *gauge);

/**
 * @brief Free the Party Gauge and its resources back to the heap.
 * 
 * @param gauge 
 */
void PartyGauge_Free(PartyGauge *gauge);

#endif // POKEPLATINUM_BATTLE_PARTY_GAUGE_H
