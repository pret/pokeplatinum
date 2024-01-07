#ifndef POKEPLATINUM_CONSTANTS_BATTLE_MESSAGE_TAGS_H
#define POKEPLATINUM_CONSTANTS_BATTLE_MESSAGE_TAGS_H

#define TAG_SIDE_LOCAL_MESSAGE  (1 << 6) // adjust the message for the side's source (e.g. "The foe's X used Y!")
#define TAG_GLOBAL_MESSAGE      (1 << 7) // do not perform any message adjustment for a calling side

#endif // POKEPLATINUM_CONSTANTS_BATTLE_MESSAGE_TAGS_H
