from enum import Enum, auto


class PokemonGenderRatio(Enum):
    MALE_ONLY = 0
    FEMALE_12_5 = 31
    FEMALE_25 = 63
    FEMALE_50 = 127
    FEMALE_75 = 191
    FEMALE_87_5 = 223
    FEMALE_ONLY = 254
    NO_GENDER = 255
