#ifndef POKEPLATINUM_ENC_EFFECTS_H
#define POKEPLATINUM_ENC_EFFECTS_H

#include "overlay006/struct_ov6_02240D5C.h"

/**
 * Gets an identifier to be used for a particular cut-in effect applied to the
 * game overlay whenever a battle starts. This effect is applied as a transition
 * from the overworld view to the battle UI.
 * 
 * @param battleData
 * @return An ID describing the graphical effect to apply as the battle starts.
 */
u32 EncEffects_GetCutInEffectForBattle(const UnkStruct_ov6_02240D5C * battleData);

/**
 * Gets an identifier pointing to a specific SEQ, which contains background
 * music to be played whenever a battle is being conducted. This music
 * starts playing after the battle begins, and will play during any
 * graphical transition from the overworld view to the battle UI.
 * 
 * @param battleData 
 * @return An ID pointing to a specific SEQ to be played during the battle.
 */
u32 EncEffects_GetBGMForBattle(const UnkStruct_ov6_02240D5C * battleData);

#endif // POKEPLATINUM_ENC_EFFECTS_H
