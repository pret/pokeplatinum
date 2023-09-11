from enum import Enum, auto


class PokeType(Enum):
    TYPE_NORMAL = 0
    TYPE_FIGHTING = auto()
    TYPE_FLYING = auto()
    TYPE_POISON = auto()
    TYPE_GROUND = auto()
    TYPE_ROCK = auto()
    TYPE_BUG = auto()
    TYPE_GHOST = auto()
    TYPE_STEEL = auto()
    TYPE_MYSTERY = auto()
    TYPE_FIRE = auto()
    TYPE_WATER = auto()
    TYPE_GRASS = auto()
    TYPE_ELECTRIC = auto()
    TYPE_PSYCHIC = auto()
    TYPE_ICE = auto()
    TYPE_DRAGON = auto()
    TYPE_DARK = auto()
    TYPE_NONE = 0x1F


class ContestType(Enum):
    CONTEST_TYPE_COOL = 0
    CONTEST_TYPE_CUTE = auto()
    CONTEST_TYPE_BEAUTY = auto()
    CONTEST_TYPE_SMART = auto()
    CONTEST_TYPE_TOUGH = auto()
