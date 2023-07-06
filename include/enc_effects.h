#ifndef POKEPLATINUM_ENC_EFFECTS_H
#define POKEPLATINUM_ENC_EFFECTS_H

#include "overlay006/battle_params.h"

enum EncEffectCutIn {
    ENCEFF_CUTIN_LEADER_ROARK = 12,
    ENCEFF_CUTIN_LEADER_GARDENIA,
    ENCEFF_CUTIN_LEADER_WAKE,
    ENCEFF_CUTIN_LEADER_MAYLENE,
    ENCEFF_CUTIN_LEADER_FANTINA,
    ENCEFF_CUTIN_LEADER_CANDICE,
    ENCEFF_CUTIN_LEADER_BYRON,
    ENCEFF_CUTIN_LEADER_VOLKNER,

    ENCEFF_CUTIN_ELITE_FOUR_AARON,
    ENCEFF_CUTIN_ELITE_FOUR_BERTHA,
    ENCEFF_CUTIN_ELITE_FOUR_FLINT,
    ENCEFF_CUTIN_ELITE_FOUR_LUCIAN,
    ENCEFF_CUTIN_CHAMPION_CYNTHIA,

    ENCEFF_CUTIN_MYTHICAL,
    ENCEFF_CUTIN_LEGENDARY,
    
    ENCEFF_CUTIN_GALACTIC_GRUNT,
    ENCEFF_CUTIN_GALACTIC_BOSS,

    ENCEFF_CUTIN_FRONTIER,
    ENCEFF_CUTIN_DOUBLE,

    ENCEFF_CUTIN_USE_LOCAL = 0xFFFF,
};

/**
 * Get the cut-in effect ID applied as a transition from the overworld
 * to the battle UI.
 * 
 * @param battleParams 
 * @return Cut-in effect ID
 */
u32 EncEffects_CutInEffect(const BattleParams *battleParams);

/**
 * Get the SEQ ID pointing to this encounter's background music.
 * 
 * @param battleParams 
 * @return SEQ ID
 */
u32 EncEffects_BGM(const BattleParams *battleParams);

#endif // POKEPLATINUM_ENC_EFFECTS_H
