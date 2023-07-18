#!/usr/bin/env python3

import argparse
import os
import platform
import re


class PathRecord:
    def __init__(self, id: int, path: str):
        self.id = id
        self.path = path

    def fix(self):
        root = '/mnt/c/' if is_wsl_accessing_windows() else '/'
        self.path = re.sub(r'[A-Z]:[/\\]', root, self.path).replace('\\', '/')

    def to_bytearray(self) -> bytearray:
        byte_array = bytearray()

        byte_array.extend((len(self.path) + len(self.path) % 4 + 0x4).to_bytes(4, byteorder='little'))
        byte_array.extend(self.path.encode('utf-8'))
        byte_array.extend(bytearray(len(self.path) % 4))
        byte_array.extend((~self.id).to_bytes(4, byteorder='little', signed=True))

        return byte_array


class DepsRecord:
    def __init__(self, id: int, data: bytes):
        self.id = id
        self.data = data
    
    def to_bytearray(self) -> bytearray:
        byte_array = bytearray(self.id.to_bytes(4, 'little'))
        byte_array.extend(self.data)
        return byte_array


def is_wsl_accessing_windows() -> bool:
    return ("microsoft" in platform.uname()[2].lower() and os.path.realpath(os.path.abspath(__file__)).startswith("/mnt/"))


def main():
    if platform.system().lower() == 'windows':
        return

    args = parse_args()
    with open(args.depfile, 'rb+') as ninja_deps:
        assert ninja_deps.read(0xC).decode('utf-8') == '# ninjadeps\n'
        ninja_version = int.from_bytes(ninja_deps.read(0x4), 'little')

        records = list()
        path_counter = 0
        while entry_key_bytes := ninja_deps.read(0x4):
            entry_key = int.from_bytes(entry_key_bytes, 'little')
            if (entry_key >> 31) & 1:
                # deps record
                entry_len = entry_key & 0xFFFF
                records.append(DepsRecord(entry_key, ninja_deps.read(entry_len)))
            else:
                # path record
                path = ninja_deps.read(entry_key - 0x4).decode('utf-8').rstrip()
                records.append(PathRecord(path_counter, path))
                path_counter += 1
                ninja_deps.read(0x4) # Skip checksum

        ninja_deps.seek(0x10)

        for record in records:
            if isinstance(record, PathRecord):
                record.fix()            
            ninja_deps.write(record.to_bytearray())


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("depfile", type=str, help="Path to the .ninja_deps file")
    return parser.parse_args()


if __name__ == '__main__':
    main()
