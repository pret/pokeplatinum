#!/usr/bin/env python3

import subprocess
from pathlib import Path

DIRS = [
    (Path("wecell.narc.d"), Path("wecell.conv")),
    (Path("wecellanm.narc.d"), Path("wecellanm.conv")),
    (Path("wechar.narc.d"), Path("wechar.conv")),
    (Path("wepltt.narc.d"), Path("wepltt.conv"))
]

CELL_ARGS = {
    "00002.NCGR": [],
    "00008.NCGR": ["-nosnap", "-noskip"],
}

FIXED_PALETTES = {
    "00016.NCGR": "00015.NCLR",
    "00017.NCGR": "00016.NCLR",
    "00018.NCGR": "00017.NCLR",
    "00019.NCGR": "00018.NCLR",
    "00020.NCGR": "00019.NCLR",
    "00021.NCGR": "00020.NCLR",
    "00022.NCGR": "00021.NCLR",
    "00023.NCGR": "00022.NCLR",
    "00024.NCGR": "00023.NCLR",
    "00025.NCGR": "00024.NCLR",
    "00026.NCGR": "00025.NCLR",
    "00027.NCGR": "00026.NCLR",
    "00028.NCGR": "00027.NCLR",
    "00029.NCGR": "00028.NCLR",
}

def get_cell_args(filename: str) -> list[str]:
    return CELL_ARGS.get(filename, ["-nosnap", "-noskip"])

def get_fixed_palette(filename: str) -> Path:
    return DIRS[3][0] / FIXED_PALETTES.get(filename, filename.replace("NCGR", "NCLR"))

for file in DIRS[0][0].glob("*.NCER.lz"):
    intermediate_file = DIRS[0][1] / file.name.replace("NCER.lz", "NCER")
    output_file = intermediate_file.with_suffix(".json")
    subprocess.run(["lnitrogfx", file, intermediate_file], check=True)
    subprocess.run(["lnitrogfx", intermediate_file, output_file], check=True)
    # intermediate_file.unlink()

for file in DIRS[1][0].glob("*.NANR.lz"):
    intermediate_file = DIRS[1][1] / file.name.replace("NANR.lz", "NANR")
    output_file = intermediate_file.with_suffix(".json")
    subprocess.run(["lnitrogfx", file, intermediate_file], check=True)
    subprocess.run(["lnitrogfx", intermediate_file, output_file], check=True)
    # intermediate_file.unlink()

for file in DIRS[2][0].glob("*.NCGR.lz"):
    intermediate_file = DIRS[2][1] / file.name.replace("NCGR.lz", "NCGR")
    output_file = intermediate_file.with_suffix(".png")
    palette = DIRS[3][0] / file.name.replace("NCGR.lz", "NCLR")
    cell = DIRS[0][1] / file.name.replace("NCGR.lz", "NCER")
    subprocess.run(["lnitrogfx", file, intermediate_file], check=True)
    subprocess.run([
        "lnitrogfx",
        intermediate_file,
        output_file,
        "-palette",
        get_fixed_palette(intermediate_file.name),
        "-cell",
        cell,
        *get_cell_args(intermediate_file.name),
        ], check=True)
    # intermediate_file.unlink()

for file in DIRS[3][0].glob("*.NCLR"):
    output_file = DIRS[3][1] / file.name.replace("NCLR", "pal")
    subprocess.run(["lnitrogfx", file, output_file], check=True)

# Remove intermediate cell files
# for file in DIRS[0][1].glob("*.NCER"):
#     file.unlink()
