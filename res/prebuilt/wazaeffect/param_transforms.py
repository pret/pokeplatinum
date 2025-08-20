from pathlib import Path
from enum import Enum, auto
import re

ROOT_DIR = Path(__file__).resolve().parent.parent.parent.parent

current_file = ''

def set_current_file(file: str):
    global current_file
    current_file = file

SEQS = {}
with open(ROOT_DIR / 'generated/sdat.txt', 'r', encoding='utf-8') as f:
    n = 0
    regex = re.compile(r'(\w+) = (\d+)')
    for line in f:
        if not line.startswith('SEQ_'):
            continue
        if match := regex.match(line):
            n = int(match.group(2))
            SEQS[n] = match.group(1)
        else:
            SEQS[n] = line.strip()
        n += 1
    
MOVES = []
with open(ROOT_DIR / 'generated/moves.txt', 'r', encoding='utf-8') as f:
    for line in f:
        line = line.strip().replace('MOVE_', '').lower()
        if line:
            MOVES.append(line)
    MOVES[0] = '0000' # None -> 0000

def get_move_name(id):
    return MOVES[id] if 0 <= id < len(MOVES) else str(id).zfill(4)

def assert_enum(v, vs):
    assert v >= 0 and v < len(vs), f"Invalid enum value: {v}, expected in range 0-{len(vs)-1} in {current_file}"

def assert_dict(v, vs):
    assert v in vs, f"Invalid dict key: {v}, expected in {list(vs.keys())} in {current_file}"

def transform_SwitchBg(args: list[int]) -> list[int | str]:
    FLAGS_SHIFT = 16
    NONE = (0x00 << FLAGS_SHIFT)
    MOVE = (0x02 << FLAGS_SHIFT)
    STOP = (0x04 << FLAGS_SHIFT)
    CANCEL = (0x08 << FLAGS_SHIFT)
    UNK_10 = (0x10 << FLAGS_SHIFT)
    UNK_20 = (0x20 << FLAGS_SHIFT)
    UNK_40 = (0x40 << FLAGS_SHIFT)

    MODES = [
        'BATTLE_BG_SWITCH_MODE_BLEND',
        'BATTLE_BG_SWITCH_MODE_FADE',
        'BATTLE_BG_SWITCH_MODE_FLAGS',
    ]

    FLAGS = {
        MOVE: 'BATTLE_BG_SWITCH_FLAG_MOVE',
        STOP: 'BATTLE_BG_SWITCH_FLAG_STOP',
        CANCEL: 'BATTLE_BG_SWITCH_FLAG_CANCEL',
        UNK_10: 'BATTLE_BG_SWITCH_FLAG_UNK_10',
        UNK_20: 'BATTLE_BG_SWITCH_FLAG_UNK_20',
        UNK_40: 'BATTLE_BG_SWITCH_FLAG_UNK_40',
    }

    mode = args[1] & 0xFFFF
    flags = args[1] & 0xFFFF0000

    assert_enum(mode, MODES)

    mode_str = MODES[mode]
    flags_str = ' | '.join(name for flag, name in FLAGS.items() if flags & flag)
    if flags_str:
        mode_str += f' | {flags_str}'

    return [args[0], mode_str]

def transform_SetBgSwitchVar(args):
    vars = [
        "BATTLE_ANIM_VAR_BG_MOVE_STEP_X",
        "BATTLE_ANIM_VAR_BG_MOVE_STEP_Y",
        "BATTLE_ANIM_VAR_BG_MOVE_START_X",
        "BATTLE_ANIM_VAR_BG_MOVE_START_Y"
    ]

    assert_enum(args[0], vars)
    return [vars[args[0]], args[1]]

def transform_SetVar(args):
    vars = [
        "BATTLE_ANIM_VAR_BG_MOVE_STEP_X",
        "BATTLE_ANIM_VAR_BG_MOVE_STEP_Y",
        "BATTLE_ANIM_VAR_BG_MOVE_START_X",
        "BATTLE_ANIM_VAR_BG_MOVE_START_Y",
        "BATTLE_ANIM_VAR_BG_FADE_TYPE",
        "BATTLE_ANIM_VAR_BG_BLEND_TYPE",
        "BATTLE_ANIM_VAR_BG_ANIM_MODE",
        "BATTLE_ANIM_VAR_BG_SCREEN_MODE"
    ]

    var = args[0]
    return [vars[var], args[1]] if var < len(vars) else args

def transform_PlaySEAny(args):
    PANS = {
        -117: 'BATTLE_SOUND_PAN_LEFT',
        117: 'BATTLE_SOUND_PAN_RIGHT'
    }

    assert_dict(args[0], SEQS)
    return [SEQS[args[0]], *[PANS[arg] if arg in PANS else arg for arg in args[1:]]]

def transform_LoadPokemonSpriteDummyResources(args):
    return args

def transform_AddPokemonSprite(args):
    BATTLER_TYPES = [
        'BATTLER_ROLE_ATTACKER',
        'BATTLER_ROLE_DEFENDER',
        'BATTLER_ROLE_ATTACKER_PARTNER',
        'BATTLER_ROLE_DEFENDER_PARTNER',
        'BATTLER_ROLE_PLAYER_1',
        'BATTLER_ROLE_ENEMY_1',
        'BATTLER_ROLE_PLAYER_2',
        'BATTLER_ROLE_ENEMY_2',
    ]

    assert_enum(args[0], BATTLER_TYPES)

    return [
        BATTLER_TYPES[args[0]],
        'TRUE' if args[1] != 0 else 'FALSE',
        f'BATTLE_ANIM_MON_SPRITE_{args[2]}',
        args[3]
    ]

def transform_RemovePokemonSprite(args):
    return [f'BATTLE_ANIM_MON_SPRITE_{args[0]}']


class ScriptFunc(Enum):
    Nop = 0
    AnimExample = auto()
    SoundExample = auto()
    GenericExample = auto()
    RotateMon = auto()
    Strength = auto()
    BulkUp = auto()
    DoubleTeam = auto()
    QuickAttack = auto()
    DrillPeck = auto()
    Submission = auto()
    Confusion = auto()
    AcidArmor = auto()
    Growth = auto()
    Meditate = auto()
    Teleport = auto()
    Flash = auto()
    NightShadeAttacker = auto()
    NightShadeDefender = auto()
    Splash = auto()
    Spite = auto()
    Harden = auto()
    Minimize = auto()
    FaintAttack = auto()
    Earthquake = auto()
    PlayfulHops = auto()
    Nightmare = auto()
    Flail = auto()
    Magnitude = auto()
    Return = auto()
    VitalThrow = auto()
    Swagger = auto()
    Memento = auto()
    FadeBg = auto()
    FadeBattlerSprite = auto()
    ScalePokemonSprite = auto()
    Shake = auto()
    Extrasensory = auto()
    AlphaFadePokemonSprite = auto()
    OdorSleuth = auto()
    HideBattler = auto()
    FakeOutCurtain = auto()
    ScaleBattlerSprite = auto()
    FakeOut = auto()
    ScrollCustomBg = auto()
    MuddyWater = auto()
    Megahorn = auto()
    MegahornAttacker = auto()
    MegahornDefender = auto()
    Surf = auto()
    BlinkAttacker = auto()
    MoveBattlerX = auto()
    MoveBattlerX2 = auto()
    ShakeAndScaleAttacker = auto()
    ShakeAndScaleAttacker2 = auto()
    Camouflage = auto()
    Superpower = auto()
    MoveBattler = auto()
    Mimic = auto()
    ShadowPunch = auto()
    RevolveBattler = auto()
    MoveBattlerOffScreen = auto()
    MoveBattlerToDefaultPos = auto()
    FadePokemonSprite = auto()
    BattlerPartialDrawTest = auto()
    MoveEmitterA2BLinear = auto()
    MoveEmitterA2BParabolic = auto()
    BattlerPartialDraw = auto()
    ShakeBg = auto()
    PixelatePokemonSprite = auto()
    RolePlay = auto()
    Snatch = auto()
    RevolveEmitter = auto()
    MoveEmitterViewportTop = auto()
    SetBgGrayscale = auto()
    SetPokemonSpritePriority = auto()
    ScrollSwitchedBg = auto()
    MoveBattlerOnOrOffScreen = auto()
    RenderPokemonSprites = auto()
    Sketch = auto()
    StatChangeUp = auto()
    StatChangeDown = auto()
    StatChangeHeal = auto()
    StatChangeMetal = auto()

ARG_COUNTS = {
    ScriptFunc.Nop: 0,
    ScriptFunc.AnimExample: 0,
    ScriptFunc.SoundExample: 0,
    ScriptFunc.GenericExample: 0,
    ScriptFunc.RotateMon: [3, 4, 6],
    ScriptFunc.Strength: 4,
    ScriptFunc.BulkUp: [0, 1],
    ScriptFunc.DoubleTeam: 0,
    ScriptFunc.QuickAttack: 0,
    ScriptFunc.DrillPeck: 0,
    ScriptFunc.Submission: 3,
    ScriptFunc.Confusion: 0,
    ScriptFunc.AcidArmor: 0,
    ScriptFunc.Growth: 0,
    ScriptFunc.Meditate: 0,
    ScriptFunc.Teleport: 0,
    ScriptFunc.Flash: 0,
    ScriptFunc.NightShadeAttacker: 0,
    ScriptFunc.NightShadeDefender: 0,
    ScriptFunc.Splash: 0,
    ScriptFunc.Spite: 0,
    ScriptFunc.Harden: 0,
    ScriptFunc.Minimize: 0,
    ScriptFunc.FaintAttack: 0,
    ScriptFunc.Earthquake: 0,
    ScriptFunc.PlayfulHops: 1,
    ScriptFunc.Nightmare: 1,
    ScriptFunc.Flail: 5,
    ScriptFunc.Magnitude: 0,
    ScriptFunc.Return: 0,
    ScriptFunc.VitalThrow: 0,
    ScriptFunc.Swagger: 0,
    ScriptFunc.Memento: 0,
    ScriptFunc.FadeBg: 5,
    ScriptFunc.FadeBattlerSprite: [5, 6],
    ScriptFunc.ScalePokemonSprite: 8,
    ScriptFunc.Shake: 5,
    ScriptFunc.Extrasensory: 0,
    ScriptFunc.AlphaFadePokemonSprite: 6,
    ScriptFunc.OdorSleuth: 0,
    ScriptFunc.HideBattler: 2,
    ScriptFunc.FakeOutCurtain: 0,
    ScriptFunc.ScaleBattlerSprite: 8,
    ScriptFunc.FakeOut: 0,
    ScriptFunc.ScrollCustomBg: 8,
    ScriptFunc.MuddyWater: 8,
    ScriptFunc.Megahorn: 0,
    ScriptFunc.MegahornAttacker: 0,
    ScriptFunc.MegahornDefender: 0,
    ScriptFunc.Surf: 0,
    ScriptFunc.BlinkAttacker: 2,
    ScriptFunc.MoveBattlerX: 3,
    ScriptFunc.MoveBattlerX2: 3,
    ScriptFunc.ShakeAndScaleAttacker: 5,
    ScriptFunc.ShakeAndScaleAttacker2: 7,
    ScriptFunc.Camouflage: 0,
    ScriptFunc.Superpower: 0,
    ScriptFunc.MoveBattler: 4,
    ScriptFunc.Mimic: 0,
    ScriptFunc.ShadowPunch: 0,
    ScriptFunc.RevolveBattler: 3,
    ScriptFunc.MoveBattlerOffScreen: 2,
    ScriptFunc.MoveBattlerToDefaultPos: 1,
    ScriptFunc.FadePokemonSprite: 6,
    ScriptFunc.BattlerPartialDrawTest: -1,
    ScriptFunc.MoveEmitterA2BLinear: [6, 7, 8, 9],
    ScriptFunc.MoveEmitterA2BParabolic: [6, 7, 8, 9],
    ScriptFunc.BattlerPartialDraw: 4,
    ScriptFunc.ShakeBg: [5, 6],
    ScriptFunc.PixelatePokemonSprite: 4,
    ScriptFunc.RolePlay: [0, 1],
    ScriptFunc.Snatch: 1,
    ScriptFunc.RevolveEmitter: 10,
    ScriptFunc.MoveEmitterViewportTop: [5, 6],
    ScriptFunc.SetBgGrayscale: 1,
    ScriptFunc.SetPokemonSpritePriority: [5, 7],
    ScriptFunc.ScrollSwitchedBg: 1,
    ScriptFunc.MoveBattlerOnOrOffScreen: 3,
    ScriptFunc.RenderPokemonSprites: 1,
    ScriptFunc.Sketch: [0, 1],
    ScriptFunc.StatChangeUp: 2,
    ScriptFunc.StatChangeDown: 2,
    ScriptFunc.StatChangeHeal: 2,
    ScriptFunc.StatChangeMetal: 2
}

def transform_CallFunc(args):
    expected = ARG_COUNTS.get(ScriptFunc(args[0]), 0)
    if isinstance(expected, list):
        if args[1] not in expected:
            print(f"Warning: {args[0]} expected one of {expected} DECLARED args, got {args[1]} in {current_file}")
            return args
        if len(args) - 2 not in expected:
            print(f"Warning: {args[0]} expected one of {expected} SUPPLIED args, got {len(args) - 2} in {current_file}")
            return args
    else:
        if expected != args[1]:
            print(f"Warning: {args[0]} expected {expected} DECLARED args, got {args[1]} in {current_file}")
            return args
        if expected != len(args) - 2:
            print(f"Warning: {args[0]} expected {expected} SUPPLIED args, got {len(args) - 2} in {current_file}")
    
    return args
