#!/usr/bin/env python3

import subprocess
from pathlib import Path

DIRS = [
    (Path("wecell.narc.d"), Path("wecell.conv")),
    (Path("wecellanm.narc.d"), Path("wecellanm.conv")),
    (Path("wechar.narc.d"), Path("wechar.conv")),
    (Path("wepltt.narc.d"), Path("wepltt.conv"))
]

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
    intermediate_file.unlink()

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
        palette,
        "-cell",
        cell,
        "-nosnap", "-noskip"
        ], check=True)
    intermediate_file.unlink()

# Remove intermediate cell files
for file in DIRS[0][1].glob("*.NCER"):
    file.unlink()
