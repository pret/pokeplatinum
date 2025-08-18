from pathlib import Path
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
        MOVE: 'BATTLE_BG_SWITCH_FLAGS_MOVE',
        STOP: 'BATTLE_BG_SWITCH_FLAGS_STOP',
        CANCEL: 'BATTLE_BG_SWITCH_FLAGS_CANCEL',
        UNK_10: 'BATTLE_BG_SWITCH_FLAGS_UNK_10',
        UNK_20: 'BATTLE_BG_SWITCH_FLAGS_UNK_20',
        UNK_40: 'BATTLE_BG_SWITCH_FLAGS_UNK_40',
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
