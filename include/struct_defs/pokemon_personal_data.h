#ifndef POKEPLATINUM_STRUCT_02075874_H
#define POKEPLATINUM_STRUCT_02075874_H

/**
 * @brief Pokemon Personal data structure. This contains data that is the same across all pokemon of the same species/form
 */
typedef struct PokemonPersonalData {
    u8 baseHp; //!< The pokemons base HP stat
    u8 baseAtk; //!< The pokemons base Attack stat
    u8 baseDef; //!< The pokemons base Defense stat
    u8 baseSpeed; //!< The pokemons base Speed stat
    u8 baseSpAtk; //!< The pokemons base Special Attack stat
    u8 baseSpDef; //!< The pokemons base Special Defense stat
    u8 type1; //!< The pokemons first type
    u8 type2; //!< The pokemons second type
    u8 catchRate; //!< The pokemons catch rate
    u8 baseExp; //!< A factor in determining experience yield when defeating this pokemon
    u16 evHpYield : 2; //!< How many HP EVs will be gained when defeating this pokemon
    u16 evAtkYield : 2; //!< How many Attack EVs will be gained when defeating this pokemon
    u16 evDefYield : 2; //!< How many Defense EVs will be gained when defeating this pokemon
    u16 evSpeedYield : 2; //!< How many Speed EVs will be gained when defeating this pokemon
    u16 evSpAtkYield : 2; //!< How many Special Attack EVs will be gained when defeating this pokemon
    u16 evSpDefYield : 2; //!< How many Special Defense EVs will be gained when defeating this pokemon
    u16 padding : 4;
    u16 item1; //!< Common held item when this pokemon is encountered in the wild
    u16 item2; //!< Rare held item when this pokemon is encountered in the wild
    u8 gender; //!< The pokemons gender ratio, except for special values, a higher value will result in more females and a lower value will result in more males appearing
    u8 hatchCycles; //!< How long eggs of this pokemon will take to hatch. In Gen.IV One cycle is 255 steps
    u8 baseFriendship; //!< The pokemons base Friendship stat
    u8 expRate; //!< The experience rate category of the pokemon. This sets which formula is used to determine the pokemons level based on its experience
    u8 eggGroup1; //!< The pokemons first egg group
    u8 eggGroup2; //!< The pokemons second egg group
    u8 ability1; //!< The pokemons first possible ability
    u8 ability2; //!< The pokemons second possible ability
    u8 greatMarshFleeRate; //!< The pokemons base flee rate in the Great Marsh safari zone
    u8 color : 7; //!< The pokemons color category
    u8 inverse : 1;
    u32 unk_1C;
    u32 unk_20;
    u32 unk_24;
    u32 unk_28;
} PokemonPersonalData;

#endif // POKEPLATINUM_STRUCT_02075874_H
