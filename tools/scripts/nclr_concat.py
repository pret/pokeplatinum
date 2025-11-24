#!/usr/bin/env python3

import argparse
from os import SEEK_SET
import pathlib
import struct

NCLR_MAGIC = int.from_bytes(b'NCLR', 'big')
PLTT_MAGIC = int.from_bytes(b'PLTT', 'big')
PCMP_MAGIC = int.from_bytes(b'PCMP', 'big')

argparser = argparse.ArgumentParser(
    prog='nclr_concat.py',
    description='Concatenates palettes from multiple NCLR files.'
)

argparser.add_argument('-i', '--input', nargs='+',
                       required=True,
                       help='Paths to input NCLRs.')
argparser.add_argument('-o', '--output',
                       required=True,
                       help='Path to the output NCLR.')
argparser.add_argument('-p', '--preserve-pcmp', action='store_true',
                       help="Preserve the values from each input NCLR's PCMP chunk.")

args = argparser.parse_args()

input_paths = map(pathlib.Path, args.input)
output_path = pathlib.Path(args.output)
preserve_pcmp = args.preserve_pcmp

out_num_palettes = 0
colors = bytearray()
pcmp = bytearray()

endianness = "<" # Little endian
has_pcmp = None
out_color_depth = None

for p in input_paths:
    found_pcmp = False
    with open(p, 'rb') as nclr_in:
        magic, bom, version, filesize, _, num_chunks = struct.unpack(f"{endianness}IHHIHH", nclr_in.read(16))
        if bom == 0xFFFE: # incorrect endiannes
            endianness = ">"
            nclr_in.seek(0, SEEK_SET)
            magic, bom, version, filesize, _, num_chunks = struct.unpack(f"{endianness}IHHIHH", nclr_in.read(16))
        
        if magic != NCLR_MAGIC:
            print(f"Error: file {p} is not a valid NCLR file!")
            exit(1)
        
        for _ in range(num_chunks):
            magic, chunk_size = struct.unpack(f"{endianness}II", nclr_in.read(8))
        
            if magic == PLTT_MAGIC:
                color_depth, _, data_len, _ = struct.unpack(f"{endianness}IIII", nclr_in.read(16))
                if out_color_depth is None:
                    out_color_depth = color_depth
                elif out_color_depth != color_depth:
                    print(f"Error: incompatible color depths: {p} has color depth {2 ** (color_depth - 1)}bpp, expected {2 ** (out_color_depth - 1)}bpp!")
                    exit(1)
                colors.extend(nclr_in.read(data_len))
            elif magic == PCMP_MAGIC:
                found_pcmp = True
                num_palettes, _, _ = struct.unpack(f"{endianness}HHI", nclr_in.read(8))
                out_num_palettes += num_palettes
                pcmp.extend(nclr_in.read(num_palettes * 2))
    
    if has_pcmp is None:
        has_pcmp = found_pcmp
    elif preserve_pcmp and not found_pcmp:
        print(f"Error: --preserve-pcmp was passed but file {p} has no PCMP chunk!")
        exit(1)
    elif has_pcmp != found_pcmp:
        print(f"Error: mixing files with and without a PCMP chunk is unsupported!")
        exit(1)
    
with open(output_path, 'wb') as nclr_out:
    filesize = 16 + 24 + len(colors)
    if has_pcmp:
        filesize += 16 + len(pcmp)
        
    nclr_out.write(struct.pack("<IHHIHH", NCLR_MAGIC, 0xFEFF, 0x100, filesize, 0x10, 2 if has_pcmp else 1))
    nclr_out.write(struct.pack("<IIIIII", PLTT_MAGIC, 0x18 + len(colors), out_color_depth, 0, len(colors), 0x10))
    nclr_out.write(colors)
    
    if has_pcmp:
        nclr_out.write(struct.pack("<IIHHI", PCMP_MAGIC, 16 + 2 * out_num_palettes, out_num_palettes, 0xBEEF, 8))
        if preserve_pcmp:
            nclr_out.write(pcmp)
        else:
            nclr_out.write(struct.pack(f"{out_num_palettes}H", *range(out_num_palettes)))
