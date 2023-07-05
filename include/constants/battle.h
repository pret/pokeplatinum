#ifndef POKEPLATINUM_CONSTANTS_BATTLE_H
#define POKEPLATINUM_CONSTANTS_BATTLE_H

#define BATTLE_TYPE_SINGLES         (0 << 0)
#define BATTLE_TYPE_WILD_MON        (0 << 0)
#define BATTLE_TYPE_TRAINER         (1 << 0)
#define BATTLE_TYPE_DOUBLES         (1 << 1)
#define BATTLE_TYPE_LINK            (1 << 2)
#define BATTLE_TYPE_2vs2            (1 << 3) // This is, explicitly, two distinct battlers on each side
#define BATTLE_TYPE_TAG             (1 << 4) // This is, explicitly, a battle with a partner
#define BATTLE_TYPE_SAFARI          (1 << 5)
#define BATTLE_TYPE_AI              (1 << 6)
#define BATTLE_TYPE_FRONTIER        (1 << 7)
#define BATTLE_TYPE_ROAMER          (1 << 8)
#define BATTLE_TYPE_PAL_PARK        (1 << 9)
#define BATTLE_TYPE_CATCH_TUTORIAL  (1 << 10)

#endif // POKEPLATINUM_CONSTANTS_BATTLE_H
