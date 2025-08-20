#!/usr/bin/env python3
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MOVES = ROOT / "res/battle/moves"
SUBS_ANIMS = ROOT / "res/battle/scripts/subscripts/anims"

# Which function IDs to convert and their macro names.
# Some IDs require special handling (reorder or choose by count).
ID_TO_MACRO = {
    0: "Func_Nop",
    1: "Func_AnimExample",
    2: "Func_SoundExample",
    3: "Func_GenericExample",
    4: "Func_RotateMon",
    5: "Func_Strength",
    6: "Func_BulkUp",
    7: "Func_DoubleTeam",
    8: "Func_QuickAttack",
    9: "Func_DrillPeck",
    10: "Func_Submission",
    11: "Func_Confusion",
    12: "Func_AcidArmor",
    13: "Func_Growth",
    14: "Func_Meditate",
    15: "Func_Teleport",
    16: "Func_Flash",
    17: "Func_NightShadeAttacker",
    18: "Func_NightShadeDefender",
    19: "Func_Splash",
    20: "Func_Spite",
    21: "Func_Harden",
    22: "Func_Minimize",
    23: "Func_FaintAttack",
    24: "Func_Earthquake",
    25: "Func_PlayfulHops",
    26: "Func_Nightmare",
    27: "Func_Flail",
    28: "Func_Magnitude",
    29: "Func_Return",
    30: "Func_VitalThrow",
    31: "Func_Swagger",
    32: "Func_Memento",
    33: "Func_FadeBg",
    34: "Func_FadeBattlerSprite",
    35: "Func_ScalePokemonSprite",
    36: "Func_Shake",
    37: "Func_Extrasensory",
    38: "Func_AlphaFadePokemonSprite",
    39: "Func_OdorSleuth",
    40: "Func_HideBattler",
    41: "Func_FakeOutCurtain",
    42: "Func_ScaleBattlerSprite",
    43: "Func_FakeOut",
    44: "Func_ScrollCustomBg",
    45: "Func_MuddyWater",
    46: "Func_Megahorn",
    47: "Func_MegahornAttacker",
    48: "Func_MegahornDefender",
    49: "Func_Surf",
    50: "Func_BlinkAttacker",
    51: "Func_MoveBattlerX",
    52: "Func_MoveBattlerX2",
    53: "Func_ShakeAndScaleAttacker",
    54: "Func_ShakeAndScaleAttacker2",
    55: "Func_Camouflage",
    56: "Func_Superpower",
    57: "Func_MoveBattler",   # reorder
    58: "Func_Mimic",
    59: "Func_ShadowPunch",
    60: "Func_RevolveBattler",
    61: "Func_MoveBattlerOffScreen",
    62: "Func_MoveBattlerToDefaultPos",
    63: "Func_FadePokemonSprite",
    65: "Func_MoveEmitterA2BLinear",
    66: "Func_MoveEmitterA2BParabolic",
    67: "Func_BattlerPartialDraw",
    68: "Func_ShakeBg",
    69: "Func_PixelatePokemonSprite",
    70: "Func_RolePlay",
    71: "Func_Snatch",
    72: "Func_RevolveEmitter",
    73: "Func_MoveEmitterViewportTop",
    74: "Func_SetBgGrayscale",
    # 75 has two names, handled specially below
    76: "Func_ScrollSwitchedBg",
    77: "Func_MoveBattlerOnOrOffScreen",  # reorder
    78: "Func_RenderPokemonSprites",
    79: "Func_Sketch",
    80: "Func_StatChangeUp",
    81: "Func_StatChangeDown",
    82: "Func_StatChangeHeal",
    83: "Func_StatChangeMetal",
}

CALLFUNC_RE = re.compile(r"^(\s*)CallFunc\s+(\d+)\s*,\s*(\d+)\s*,(.*)$")
FUNC_RE = re.compile(r"^(\s*)Func_(\w+)\s*(.*)$")

# For IDs that need reordering of args from CallFunc to macro
# value is a callable that takes list[str] args and returns reordered list[str]

def reorder_id_57(args):  # CallFunc 57: frames, dx, dy, target -> macro: target, dx, dy, frames
    if len(args) != 4:
        return args
    frames, dx, dy, target = args
    return [target, dx, dy, frames]

def reorder_id_77(args):  # CallFunc 77: mode, target, frames -> macro: target, mode, frames
    if len(args) != 3:
        return args
    mode, target, frames = args
    return [target, mode, frames]

REORDER = {
    57: reorder_id_57,
    77: reorder_id_77,
}

# Choose macro name based on id and arg count

def pick_macro_name(func_id: int, count: int) -> str | None:
    if func_id == 75:
        if count == 5:
            return "Func_SetPokemonSpritePriority"
        elif count == 7:
            return "Func_DarkVoid"
        else:
            return None
    return ID_TO_MACRO.get(func_id)


def normalize_args_list(arg_str: str) -> list[str]:
    # split by commas but keep signs/identifiers, strip whitespace
    parts = [a.strip() for a in arg_str.split(',')]
    # filter out empty strings just in case
    return [p for p in parts if p != '']

def process_func(line: str) -> str:
    m = FUNC_RE.match(line)
    if not m:
        print(f"Warning: line does not match Func_ pattern: {line}")
        return line
    indent, func_name, args = m.groups()
    args = normalize_args_list(args)
    
    new_line = f"{indent}{func_name} " + ", ".join(args)
    return new_line

def process_file(path: Path) -> int:
    changed = 0
    lines = path.read_text(encoding='utf-8').splitlines()
    out_lines = []
    for line in lines:
        m = CALLFUNC_RE.match(line)
        if not m:
            if line.startswith("    Func_"):
                line = process_func(line)
            out_lines.append(line)
            continue
        indent, fid_s, cnt_s, rest = m.groups()
        try:
            func_id = int(fid_s)
            count = int(cnt_s)
        except ValueError:
            out_lines.append(line)
            continue
        macro_name = pick_macro_name(func_id, count)
        if not macro_name:
            out_lines.append(line)
            continue
        args = normalize_args_list(rest)
        # keep only the expected number of args; scripts may have trailing comments? assume none
        args = args[:count]
        # reorders
        if func_id in REORDER:
            args = REORDER[func_id](args)
        # For stat change 80-83, macro expects only the mode, not the fixed code as first arg.
        if func_id in (80, 81, 82, 83) and len(args) == 2:
            args = [args[1]]
        # Build new line
        if args:
            new_line = f"{indent}{macro_name} " + ", ".join(args)
        else:
            new_line = f"{indent}{macro_name}"
        if new_line != line:
            changed += 1
            out_lines.append(new_line)
        else:
            out_lines.append(line)
    if changed:
        path.write_text("\n".join(out_lines) + "\n", encoding='utf-8')
    return changed


def main():
    total_changed_files = 0
    total_changed_lines = 0
    files = []
    files += sorted(MOVES.glob("*/anim/*.s"))
    files += sorted(SUBS_ANIMS.glob("*.s"))
    for f in files:
        changed = process_file(f)
        if changed:
            total_changed_files += 1
            total_changed_lines += changed
    print(f"Changed files: {total_changed_files}, changed lines: {total_changed_lines}")

if __name__ == "__main__":
    sys.exit(main())
