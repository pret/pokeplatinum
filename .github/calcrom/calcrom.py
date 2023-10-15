#!/usr/bin/env python

import json
import struct
import argparse
import pathlib

from elftools.elf.elffile import ELFFile
from elftools.elf.sections import SymbolTableSection
from elftools.elf.relocation import RelocationTable
from elftools.common.exceptions import ELFError


class CLI(argparse.Namespace):
    builddir: pathlib.Path

    _parser = argparse.ArgumentParser()
    _parser.add_argument('builddir', type=pathlib.Path)

    def __init__(self, args=None):
        self.__class__._parser.parse_args(args, self)

    def main(self):
        with open(self.builddir / 'compile_commands.json') as fp:
            commands = json.load(fp)
        sizes = {
            'src': {
                'code': 0,
                'data': 0,
            },
            'asm': {
                'code': 0,
                'data': 0,
            },
            'pointers': {
                'properly-linked': 0,
                'hard-coded': 0,
            },
        }
        with ELFFile.load_from_path(self.builddir / 'main.nef') as nef:
            programs = set(
                (seg['p_vaddr'], seg['p_vaddr'] + seg['p_memsz'])
                for seg in nef.iter_segments()
                if seg['p_memsz'] != 0
            )
        for command in commands:
            cmdstr = command['command']
            if 'mwrap mwasmarm' in cmdstr:
                cmdtype = 'asm'
            elif 'mwrap mwccarm' in cmdstr:
                cmdtype = 'src'
            else:
                continue
            try:
                with ELFFile.load_from_path(self.builddir / command['output']) as elf:
                    for section in elf.iter_sections():
                        if section['sh_type'] == 'SHT_PROGBITS':
                            sectype = 'code' if section.name in ('.text', '.init', '.itcm') else 'data'
                            sizes[cmdtype][sectype] += section.data_size
                        elif isinstance(section, SymbolTableSection):
                            for symbol in section.iter_symbols():
                                if symbol['st_value'] & 3 or symbol['st_size'] == 0 or symbol['st_size'] & 3:
                                    continue
                                sec = elf.get_section(symbol['st_shndx'])
                                elf.stream.seek(symbol['st_value'] - sec['sh_addr'] + sec['sh_offset'])
                                sizes['pointers']['hard-coded'] += sum(
                                    1 for pointer, in struct.iter_unpack('<L', elf.stream.read(symbol['st_size']))
                                    if any(end > pointer >= start for start, end in programs)
                                )
                        elif isinstance(section, RelocationTable):
                            sizes['pointers']['properly-linked'] += section.num_relocations()
            except ELFError:
                pass
    
        print('Analysis of platinum.us binary:')
        for key in 'code', 'data':
            total = sum(sizes[cmd][key] for cmd in ('src', 'asm'))
            print(f'  {total} total bytes of {key}')
            for cmd in 'src', 'asm':
                print(f'    {sizes[cmd][key]} bytes of {key} in {cmd} ({sizes[cmd][key] * 100 / total:.6f}%)')
            print('')
        total = sum(sizes['pointers'].values())
        print(f'  {total} total pointers')
        for key in 'properly-linked', 'hard-coded':
            print(f'    {sizes["pointers"][key]} {key} pointers ({sizes["pointers"][key] * 100 / total:.6f}%)')


if __name__ == '__main__':
    CLI().main()
