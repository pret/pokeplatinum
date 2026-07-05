#ifndef POKEPLATINUM_CONSTANTS_MENU_H
#define POKEPLATINUM_CONSTANTS_MENU_H

#define MENU_YES            0
#define MENU_NO             1
#if defined(SDK_BUILD_ARM) || defined(__ASSEMBLER__)
#define MENU_NOTHING_CHOSEN -1
#define MENU_CANCEL         -2
#define MENU_HEADER         -3
#else
#define MENU_NOTHING_CHOSEN (u64)(-1)
#define MENU_CANCEL         (u64)(-2)
#define MENU_HEADER         (u64)(-3)
#endif

#endif // POKEPLATINUM_CONSTANTS_MENU_H
