#!/usr/bin/env python3

import argparse
import pathlib
import re


class Arguments(argparse.Namespace):
    infile: pathlib.Path = pathlib.Path()
    offset: int = 1
    outfile: pathlib.Path = pathlib.Path()


PATTERN_SCRIPT_ENTRY = re.compile(r"^\s*ScriptEntry\s+(?P<label>\w+)")
PATTERN_SCRIPT_END = re.compile(r"^\s*ScriptEntryEnd\b")

ARGPARSER = argparse.ArgumentParser()
_ = ARGPARSER.add_argument("infile", type=pathlib.Path, help="Path to the input script-file")
_ = ARGPARSER.add_argument("offset", type=int, help="Base offset for this script-file")
_ = ARGPARSER.add_argument("outfile", type=pathlib.Path, help="Path to the output label-definitions header")

args = Arguments()
_ = ARGPARSER.parse_args(namespace=args)

guard = f"POKEPLATINUM_GLOBAL_SCRIPT_LABELS_{args.infile.stem.upper()}_H"

existing = ""
if args.outfile.exists():
    with open(args.outfile, "r", encoding="utf-8") as ifp:
        existing = ifp.read()

with open(args.infile, "r", encoding="utf-8") as ifp:
    lines: list[str] = []
    lines.append(f"#ifndef {guard}")
    lines.append(f"#define {guard}")
    lines.append("")

    i = 0
    for line in ifp:
        if PATTERN_SCRIPT_END.match(line):
            break

        m = PATTERN_SCRIPT_ENTRY.match(line)
        if m:
            label = m["label"]
            lines.append(f"#define {label} {i + args.offset}")
            i += 1

    lines.append("")
    lines.append(f"#endif // {guard}")
    lines.append("") # Trailing newline

result = "\n".join(lines)
if existing != result:
    with open(args.outfile, "w", encoding="utf-8") as ofp:
        _ = ofp.write(result)
