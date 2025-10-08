#!/usr/bin/env python3

import sys
from pathlib import Path

def usage():
    print("Usage: battle_anim_scripts.py <MOVES_FILE> <MOVES_DIR> <OUTFILE>")
    print()
    print("Process an input file containing a list of moves into an")
    print("output file to order the contents of anim_scripts.narc.")

if len(sys.argv) < 4:
    usage()
    sys.exit(1)

with (
    open(sys.argv[1], "r", encoding="utf-8") as infile,
    open(sys.argv[3], "w", encoding="utf-8") as outfile,
):
    added = set()
    def add(move_name):
        print(f"{move_name}/anim", file=outfile)
        added.add(move_name)
    
    for move in infile:
        move = move.strip()
        if not move or not move.startswith("MOVE_"):
            continue
        if move == "MOVE_NONE":
            add("0000")
            continue
        move_name = move.replace("MOVE_", "").lower()
        add(move_name)
    
    for path in sorted(Path(sys.argv[2]).iterdir()):
        if not path.is_dir() or not (path / 'anim.s').exists():
            continue
        move_name = path.name
        if move_name in added:
            continue
        add(move_name)
