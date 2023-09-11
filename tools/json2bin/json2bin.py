import json
import pathlib
import subprocess

from argparse import ArgumentParser
from enum import Enum, Flag
from types import FunctionType, LambdaType


ARGPARSER = ArgumentParser(
    prog='json2bin.py',
    description='Tool for converting a collection of JSON documents into\na NARC via a constructed parsing schema'
)
ARGPARSER.add_argument('--knarc', required=True,
                       help='Path to the knarc executable')
ARGPARSER.add_argument('--source-dir', required=True,
                       help='Source directory with subdirs for each data element')
ARGPARSER.add_argument('--output-dir', required=True,
                       help='Output directory where generated files will be written')


class Parser():
    __slots__ = ('registry', 'padding_index')


    def __init__(self):
        self.registry = {}
        self.padding_index = 0

    
    def register_name(self, func: FunctionType | LambdaType | None) -> 'Parser':
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
                 size: int,
                 func: FunctionType | LambdaType,
                 const_type: type[Enum] | None = None) -> 'Parser':
        '''
            Register a function for processing a given key within the JSON
            structure, along with a size of the field in bytes and any
            constants definition needed to process the field into an integral
            value.
        '''
        self.registry[field_name] = (func, size, const_type)
        return self


    def pad(self, size: int, value: int = 0) -> 'Parser':
        '''
            Specify an instance of padding of a given size.
        '''
        self.registry[f'padding_{self.padding_index}'] = (size, value)
        return self
    

    def _walk(self, data: dict, key_seq: list[str]) -> any:
        data_val = data
        for step in key_seq:
            data_val = data_val[step]
        return data_val


    def parse(self, data: dict) -> bytes:
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
                binary.extend(val.to_bytes(size, 'little'))
            else:
                parse_func, size, const_type = self.registry[key]
                data_val = self._walk(data, key.split('.'))
                binary.extend(parse_func(data_val, size, const_type))
        
        return binary


def pack_flags(flags: list[str], size: int, consts: type[Flag]) -> bytes:
    '''
        Pack a list of flag constants into a bitmask. Flag values are defined
        by the specified consts type, which must descend from the enum.Flag
        type.
    '''
    result = consts(0)
    for flag_name in flags:
        result = result | consts[flag_name]

    return result.value.to_bytes(size, 'little')


def parse_const(val: str, size: int, consts: type[Enum]) -> bytes:
    '''
        Simple parse wrapper for a value belonging to a set of constants,
        represented in JSON as a raw string name.
    '''
    return consts[val].value.to_bytes(size, 'little')


def parse_int(val: int, size: int, _consts: type[Enum]) -> bytes:
    '''
        Simple parse wrapper for an integer.
    '''
    return val.to_bytes(size, 'little')


def parse_sint(val: int, size: int, _consts: type[Enum]) -> bytes:
    '''
        Simple parse wrapper for a signed integer.
    '''
    if val < 0:
        val = val + (1 << (size * 8))
    
    return val.to_bytes(size, 'little')


def parse(fname_in: str, schema: Parser) -> bytes:
    with open(fname_in, 'r', encoding='utf8') as input_file:
        input_json = json.load(input_file)
        return schema.parse(input_json)


def write(output_bin: bytes, output_idx: int, output_dir: str | None):
    output_fname = f'{output_idx:04}.bin'
    if output_dir:
        output_fname = pathlib.Path(output_dir) / output_fname
    
    with open(output_fname, 'wb+') as output_file:
        output_file.write(output_bin)


def process(fname_in: str,
            schema: Parser,
            output_dir: str | None,
            index_func: FunctionType):
    fname_in_path = pathlib.Path(fname_in)
    output_bin = parse(fname_in, schema)
    output_idx = index_func(fname_in_path)
    write(output_bin, output_idx, output_dir)


def json2bin(target: str,
             schema: Parser,
             output_dir: str | None,
             index_func: FunctionType,
             glob_pattern: str='*.json',
             narc_name: str | None=None,
             narc_packer: str | None=None):
    output_dir = pathlib.Path(output_dir)
    
    if not narc_name or not narc_packer:
        raise RuntimeError('Missing narc_name or narc_packer input in batch mode; halting')

    files_output_dir = output_dir / narc_name
    files_output_dir.mkdir(exist_ok=True, parents=True)
    for fname_in in pathlib.Path(target).glob(glob_pattern):
        process(fname_in, schema, files_output_dir, index_func)
    
    subprocess.run([
        pathlib.Path(narc_packer),
        '-d', files_output_dir,
        '-p', output_dir / f'{narc_name}.narc'
    ])
