import json
import pathlib
import subprocess

from collections.abc import MutableMapping, MutableSequence, Mapping, Sequence
from typing import Dict, List, Optional, Tuple, Type, Union

from argparse import ArgumentParser
from enum import Enum, Flag, auto
from types import FunctionType, LambdaType


ARGPARSER = ArgumentParser(
    prog='jsoncnv.py',
    description='Tool for converting a collection of JSON documents into\na NARC via a constructed parsing schema'
)
ARGPARSER.add_argument('--narc', required=True,
                       help='Path to the knarc executable')
ARGPARSER.add_argument('--source-dir', required=True,
                       help='Source directory with subdirs for each data element')
ARGPARSER.add_argument('--private-dir', required=True,
                       help='Directory where intermediate files will be written')
ARGPARSER.add_argument('--output-dir', required=True,
                       help='Output directory where generated files will be written')


class OptionalBehavior(Enum):
    DISALLOW = 0
    SKIP = auto()
    PAD = auto()


class OutputMode(Enum):
    SINGLE_FILE = 0
    MULTI_FILE = auto()


class Parser():
    __slots__ = ('registry', 'padding_index', 'field_index', 'alignment_index')


    def __init__(self):
        self.registry = {}
        self.alignment_index = 0
        self.padding_index = 0
        self.field_index = 0


    def register_name(self, func: Optional[Union[FunctionType, LambdaType]]) -> 'Parser':
        '''
            Register a function for processing the name key within the JSON
            structure. This differs from the standard function registration in
            that the process is much simpler; names are not stored directly
            within the data binaries, so there is no need to specify a size
            value, nor is the name related to any constants definition.
        '''
        if not func:
            self.registry['name'] = lambda s: s
        else:
            self.registry['name'] = func
        return self


    def register(self,
                 field_name: str,
                 size: Union[int, Tuple[int,int]],
                 func: Union[FunctionType, LambdaType],
                 const_type: Optional[Type[Enum]] = None,
                 optional: OptionalBehavior = OptionalBehavior.DISALLOW) -> 'Parser':
        '''
            Register a function for processing a given key within the JSON
            structure, along with a size of the field in bytes and any
            constants definition needed to process the field into an integral
            value.
        '''
        self.registry[f'{self.field_index:04}_{field_name}'] = (func, size, const_type, optional)
        self.field_index += 1
        return self


    def align(self, alignment: int, value: int = 0) -> 'Parser':
        '''
            Specify an instance of padding to a given alignment.
        '''
        self.registry[f'align_{self.alignment_index}'] = (alignment, value)
        self.alignment_index += 1
        return self


    def pad(self, size: int, value: int = 0) -> 'Parser':
        '''
            Specify an instance of padding of a given size.
        '''
        self.registry[f'padding_{self.padding_index}'] = (size, value)
        self.padding_index += 1
        return self


    def _walk(self, data: dict, key_seq: Sequence[str]) -> any:
        data_val = data
        for step in key_seq:
            if isinstance(data_val, list):
                data_val = data_val[int(step)]
            else:
                data_val = data_val.get(step, {}) # All future walks will return {}
        return data_val


    def parse(self, data: Mapping) -> bytes:
        '''
            Parse the given JSON structure according to the currently-defined
            data schema.
        '''
        binary = bytearray([])
        for key in self.registry:
            if key == 'name':
                self.registry[key](data[key])
            elif key.startswith('padding_'):
                size, val = self.registry[key]
                binary.extend(bytearray([val] * size))
            elif key.startswith('align_'):
                alignment, val = self.registry[key]
                offset = len(binary) % alignment
                if offset != 0:
                    binary.extend(bytearray([val] * (alignment - offset)))
            else:
                parse_func, size, const_type, optional = self.registry[key]
                data_key = key[5:] # first 4 characters are a key-prefix
                data_val = self._walk(data, data_key.split('.'))
                if data_val == {} or data_val is None:
                    if optional == OptionalBehavior.DISALLOW:
                        print(json.dumps(data, indent=4))
                        raise KeyError(data_key)
                    elif optional == OptionalBehavior.SKIP:
                        continue
                    elif optional == OptionalBehavior.PAD:
                        binary.extend((0).to_bytes(size, 'little'))
                        continue

                binary.extend(parse_func(data_val, size, const_type))
        return binary


def pack_flags(flags: Sequence[str], size: int, consts: Type[Flag]) -> bytes:
    '''
        Pack a list of flag constants into a bitmask. Flag values are defined
        by the specified consts type, which must descend from the enum.Flag
        type.
    '''
    result = consts(0)
    for flag_name in flags:
        result = result | consts[flag_name]
    return result.value.to_bytes(size, 'little')


def parse_const(val: str, size: int, consts: Type[Enum]) -> bytes:
    '''
        Simple parse wrapper for a value belonging to a set of constants,
        represented in JSON as a raw string name.
    '''
    return consts[val].value.to_bytes(size, 'little')


def parse_int(val: int, size: int, _consts: Type[Enum] = None) -> bytes:
    '''
        Simple parse wrapper for an integer.
    '''
    return val.to_bytes(size, 'little')


def parse_sint(val: int, size: int, _consts: Type[Enum] = None) -> bytes:
    '''
        Simple parse wrapper for a signed integer.
    '''
    if val < 0:
        val = val + (1 << (size * 8))
    return val.to_bytes(size, 'little')


def _parse(fname_in: str, schema: Parser) -> bytes:
    with open(fname_in, 'r', encoding='utf8') as input_file:
        input_json = json.load(input_file)
        return schema.parse(input_json)


def _write(output_bin: bytes, output_idx: int, output_dir: Optional[str]):
    output_fname = f'{output_idx:04}.bin'
    if output_dir:
        output_fname = pathlib.Path(output_dir) / output_fname
    with open(output_fname, 'wb+') as output_file:
        output_file.write(output_bin)


def _process(fname_in: str,
             schema: Parser,
             index_func: FunctionType) -> (any, any):
    fname_in_path = pathlib.Path(fname_in)
    output_bin = _parse(fname_in, schema)
    output_idx = index_func(fname_in_path)
    return (output_idx, output_bin)


def jsoncnv(target: str,
             schema: Parser,
             private_dir: Optional[str],
             output_dir: Optional[str],
             index_func: FunctionType,
             glob_pattern: str='*.json',
             narc_name: Optional[str] = None,
             narc_packer: Optional[str] = None,
             output_mode: OutputMode = OutputMode.MULTI_FILE,
             skip_stems: Sequence[str] = []):
    private_dir = pathlib.Path(private_dir)
    output_dir = pathlib.Path(output_dir)

    if not narc_name or not narc_packer:
        raise RuntimeError('Missing narc_name or narc_packer input in batch mode; halting')

    private_dir.mkdir(exist_ok=True, parents=True)
    binaries = {}
    for fname_in in pathlib.Path(target).glob(glob_pattern):
        if fname_in.parent.stem in skip_stems or fname_in.parent.parent.stem in skip_stems:
            continue

        (output_idx, output_bin) = _process(fname_in, schema, index_func)

        if output_mode == OutputMode.SINGLE_FILE:
            binaries[output_idx] = output_bin
        elif output_mode == OutputMode.MULTI_FILE:
            _write(output_bin, output_idx, private_dir)

    if output_mode == OutputMode.SINGLE_FILE:
        merged = bytearray([])
        for idx in sorted(binaries.keys()):
            merged.extend(binaries[idx])
        _write(merged, 0, private_dir)

    subprocess.run([
        pathlib.Path(narc_packer),
        '--create',
        '--file', output_dir / f'{narc_name}.narc',
        private_dir,
    ])
