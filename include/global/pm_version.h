#ifndef POKEPLATINUM_PM_VERSION_H
#define POKEPLATINUM_PM_VERSION_H

#define VERSION_NONE       0
#define VERSION_SAPPHIRE   1
#define VERSION_RUBY       2
#define VERSION_EMERALD    3
#define VERSION_FIRERED    4
#define VERSION_LEAFGREEN  5
#define VERSION_HEARTGOLD  7
#define VERSION_SOULSILVER 8
#define VERSION_DIAMOND    10
#define VERSION_PEARL      11
#define VERSION_PLATINUM   12
#define VERSION_GAMECUBE   15 // Both Colosseum and XD use the same ID

#define JAPANESE 1
#define ENGLISH  2
#define FRENCH   3
#define ITALIAN  4
#define GERMAN   5
#define SPANISH  7
#define KOREAN   8

extern const u8 gGameVersion;
extern const u8 gGameLanguage;

#endif // POKEPLATINUM_PM_VERSION_H
