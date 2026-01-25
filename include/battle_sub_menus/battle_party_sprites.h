#ifndef POKEPLATINUM_BATTLE_PARTY_SPRITES_H
#define POKEPLATINUM_BATTLE_PARTY_SPRITES_H

#include "battle_sub_menus/battle_party.h"

#define PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET       0
#define SELECTED_POKEMON_HELD_ITEMS_SPRITE_INDEX      6
#define PARTY_POKEMON_SPRITES_OFFSET                  7
#define PARTY_POKEMON_SUMMARY_STATUSES_SPRITES_OFFSET 13
#define SELECTED_POKEMON_TYPE_1_SPRITE_INDEX          19
#define SELECTED_POKEMON_TYPE_2_SPRITE_INDEX          20
#define MOVE_TYPES_SPRITES_OFFSET                     21
#define MOVE_TO_LEARN_TYPE_SPRITE_INDEX               25
#define SELECTED_MOVE_CLASSES_SPRITE_INDEX            26
#define COOL_STAT_SPRITE_INDEX                        27
#define BEAUTY_STAT_SPRITE_INDEX                      28
#define CUTE_STAT_SPRITE_INDEX                        29
#define SMART_STAT_SPRITE_INDEX                       30
#define TOUGH_STAT_SPRITE_INDEX                       31
#define PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET        32

void BattlePartySprites_InitializeSprites(BattleParty *battleParty);
void BattlePartySprites_CleanupSprites(BattleParty *battleParty);
void BattlePartySprites_SetupScreen(BattleParty *battleParty, enum BattlePartyScreen screen);
void BattlePartySprites_DrawMovesSprites(BattleParty *battleParty);
void BattlePartySprites_TickPartyPokemonSpriteAnimations(BattleParty *battleParty);
void BattlePartySprites_SetupCursor(BattleParty *battleParty, enum BattlePartyScreen screen);
void BattlePartySprites_DisableCursor(BattleParty *battleParty);

#endif // POKEPLATINUM_BATTLE_PARTY_SPRITES_H
