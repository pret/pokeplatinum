#!/usr/bin/env python3

import argparse
import pathlib
import subprocess

argparser = argparse.ArgumentParser(
    prog="pl_poke_icon.narc packer",
    description="Packs the archive containing Pokemon icons"
)
argparser.add_argument("-n", "--nitrogfx",
                       required=True,
                       help="Path to nitrogfx executable")
argparser.add_argument("-k", "--narc",
                       required=True,
                       help="Path to narc executable")
argparser.add_argument("-s", "--shared-dir",
                       required=True,
                       help="Path to the .shared directory")
argparser.add_argument("-p", "--private-dir",
                       required=True,
                       help="Path to the private directory (where binaries will be made)")
argparser.add_argument("-o", "--output-dir",
                       required=True,
                       help="Path to the output directory (where the NARC will be made)")
argparser.add_argument("-f", "--order-file",
                       required=True,
                       help="Path to the order file for the output NARC")
argparser.add_argument("icon_files",
                       nargs="+",
                       help="Input icon files to pack into the NARC")
args = argparser.parse_args()

shared_dir = pathlib.Path(args.shared_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

bin_dest_dir = private_dir / "pl_poke_icon_work"
bin_dest_dir.mkdir(parents=True, exist_ok=True)

subprocess.run([
    args.nitrogfx,
    shared_dir / "pl_poke_icon.pal",
    bin_dest_dir / "shared_pals.NCLR",
    "-bitdepth", "4",
])

shared_anims_cells = [
    ("shared_anim", "shared_cell"),
    ("shared_anim_32k", "shared_cell_32k"),
    ("shared_anim_64k", "shared_cell_64k"),
]

for i in range(len(shared_anims_cells)):
    anim_file_src = shared_dir / f"pl_poke_icon_anim_{i+1:02}.json"
    cell_file_src = shared_dir / f"pl_poke_icon_cell_{i+1:02}.json"
    anim_file_dst = bin_dest_dir / f"{shared_anims_cells[i][0]}.NANR"
    cell_file_dst = bin_dest_dir / f'{shared_anims_cells[i][1]}.NCER'

    subprocess.run([args.nitrogfx, anim_file_src, anim_file_dst])
    subprocess.run([args.nitrogfx, cell_file_src, cell_file_dst])

for i, input_fname in enumerate(args.icon_files):
    subprocess.run([
        args.nitrogfx,
        input_fname,
        bin_dest_dir / f"icon_{i:05}.NCGR",
        "-clobbersize",
        "-version101"
    ])

subprocess.run([
    args.narc,
    "--create",
    "--index",
    "--files-from", args.order_file,
    "--file", output_dir / "pl_poke_icon.narc",
    bin_dest_dir,
])
