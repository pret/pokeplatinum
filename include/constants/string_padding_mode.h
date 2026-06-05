#ifndef POKEPLATINUM_CONSTANTS_STRING_PADDING_MODE_H
#define POKEPLATINUM_CONSTANTS_STRING_PADDING_MODE_H

// Control codes for how to pad numeric strings.
enum PaddingMode {
    PADDING_MODE_NONE = 0, // Do not pad the string. Effectively left-justification.
    PADDING_MODE_SPACES, // Right-justify the string, padding with spaces.
    PADDING_MODE_ZEROES, // Right-justify the string, padding with zeroes.
};

#endif // POKEPLATINUM_CONSTANTS_STRING_PADDING_MODE_H
