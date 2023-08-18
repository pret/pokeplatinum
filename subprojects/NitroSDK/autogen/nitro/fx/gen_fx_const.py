#!/usr/bin/env python3

import argparse
import csv
import math


class FxSpec:
    intpart_dict = {
        'fx32': 19,
        'fx64': 51,
        'fx64c': 31,
        'fx16': 3
    }

    fracpart_dict = {
        'fx32': 12,
        'fx64': 12,
        'fx64c': 32,
        'fx16': 12
    }

    l_suffix_dict = {
        'fx32': 'L',
        'fx64': 'LL',
        'fx64c': 'LL',
        'fx16': ''
    }

    def __init__(self, name: str) -> 'FxSpec':
        self.name = name

    @property
    def intpart(self):
        return self._intpart

    @intpart.getter
    def intpart(self):
        return self.intpart_dict[self.name]

    @property
    def fracpart(self):
        return self._fracpart

    @fracpart.getter
    def fracpart(self):
        return self.fracpart_dict[self.name]
    
    @property
    def l_suffix(self):
        return self._l_suffix

    @l_suffix.getter
    def l_suffix(self):
        return self.l_suffix_dict[self.name]


class FxConst:
    def __init__(self, name: str, fxtype: FxSpec, value: float) -> 'FxConst':
        self.fxtype = fxtype
        self.name = name
        self.value = value

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, value: str):
        self._name = f'{self.fxtype.name.upper()}_{value}'

    def encode(self) -> int:
        if self.value == 0:
            return 0

        ret_di = 0.0
        ret_df = 0.0
        value_abs = 0.0
        ret_ii = 0
        ret_if = 0
        ret_val = 0

        value_abs = abs(self.value)
        ret_di = math.floor(value_abs)
        ret_df = value_abs - ret_di
        ret_ii = int(value_abs * (1 << self.fxtype.fracpart))
        ret_if = int(ret_df * (1 << self.fxtype.fracpart) + 0.5)
        ret_ii &= ~((1 << self.fxtype.fracpart) - 1)
        ret_if &= (1 << self.fxtype.fracpart) - 1
        ret_val = ret_ii + ret_if

        if self.value < 0:
            ret_val = -ret_val

        return ret_val


def generate_define(c: FxConst) -> str:
    hex_value = f'(({c.fxtype.name}) 0x{hex(c.encode())[2:].zfill(16)}{c.fxtype.l_suffix})'
    comment = f'// {c.value:.12f}'

    return f'#define {c.name: <20} {hex_value: ^20} {comment: >25}'


def generate_header(constants: list[FxConst]) -> str:
    guard_top = '\n'.join(['#ifndef FX_CONST_H', '#define FX_CONST_H', str()])
    body = '\n'.join(generate_define(c) for c in constants)
    guard_bottom = '\n'.join(['', '#endif // FX_CONST_H', ''])

    return '\n'.join([guard_top, body, guard_bottom])


def main():
    args = parse_args()
    constants = parse_csv(args.input)
    header = generate_header(constants)
    with open(args.output, 'w') as out:
        out.write(header)


def parse_args():
    parser = argparse.ArgumentParser(description='fx_const.h header generator')
    parser.add_argument('input', type=str)
    parser.add_argument('output', type=str)
    return parser.parse_args()


def parse_csv(path: str) -> list[FxConst]:
    with open(path, newline='') as file:
        reader = csv.reader(file)
        return list(
               FxConst(
                row[0], FxSpec(row[1]), float(row[2]))
                for row in reader if not row[0].startswith('#'))


if __name__ == '__main__':
    main()
