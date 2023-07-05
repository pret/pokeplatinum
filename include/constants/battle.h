#ifndef POKEPLATINUM_CONSTANTS_BATTLE_H
#define POKEPLATINUM_CONSTANTS_BATTLE_H

#define BATTLE_TYPE_SINGLES         (0x00000000)
#define BATTLE_TYPE_WILD_MON        (0x00000000)
#define BATTLE_TYPE_TRAINER         (0x00000001)
#define BATTLE_TYPE_DOUBLES         (0x00000002)
#define BATTLE_TYPE_LINK            (0x00000004)
#define BATTLE_TYPE_2vs2            (0x00000008)    // This is, explicitly, two distinct battlers on each side
#define BATTLE_TYPE_TAG             (0x00000010)    // This is, explicitly, a battle with a partner
#define BATTLE_TYPE_SAFARI          (0x00000020)
#define BATTLE_TYPE_AI              (0x00000040)
#define BATTLE_TYPE_FRONTIER        (0x00000080)
#define BATTLE_TYPE_ROAMER          (0x00000100)
#define BATTLE_TYPE_PAL_PARK        (0x00000200)
#define BATTLE_TYPE_CATCH_TUTORIAL  (0x00000400)

#endif // POKEPLATINUM_CONSTANTS_BATTLE_H
